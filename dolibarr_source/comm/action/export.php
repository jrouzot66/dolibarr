<?php
/**
 *  \file       htdocs/comm/action/export.php
 *  \ingroup    agenda
 *  \brief      Export calendar events to CSV (admin only)
 */

// Load Dolibarr environment
require '../../main.inc.php';
require_once DOL_DOCUMENT_ROOT.'/comm/action/class/actioncomm.class.php';

$api_key = 'fa0ae567a5eb446c80f38d7cd8a4c4ef';
$url = 'https://api.geoapify.com/v1';

function fetch_url_auto($url)
{
    $url = str_replace('|', '%7C', $url);
    $context = stream_context_create([
        'http' => [
            'method' => 'GET',
            'max_redirects' => 5,
            'ignore_errors' => true,
            'header' => "User-Agent: Dolibarr-Export/1.0\r\n",
        ],
        'ssl' => [
            'verify_peer' => true,
            'verify_peer_name' => true,
        ],
    ]);

    if (ini_get('allow_url_fopen')) {
        $res = @file_get_contents($url, false, $context);
        if ($res !== false) {
            return [true, $res, isset($http_response_header) ? $http_response_header : null];
        }
    }

    if (extension_loaded('curl')) {
        try {
            list($code, $res) = http_get_curl($url);
            return [true, $res, $code];
        } catch (Exception $e) {
            return [false, $e->getMessage(), null];
        }
    }

    return [false, 'API unavailable', null];
}

function http_get_curl($url) {
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Dolibarr-Export/1.0');
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, 5);
    $res = curl_exec($ch);
    if ($res === false) {
        $err = curl_error($ch);
        curl_close($ch);
        throw new Exception("cURL error: $err");
    }
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
    return [$httpCode, $res];
}

// Géocodage via Nominatim (OSM)
function geocode_address($address) {
    if (empty($address)) {
        return null;
    }

    $query = rawurlencode(trim($address));
    $url = 'https://nominatim.openstreetmap.org/search?format=json&q=' . $query . '&limit=1';

    list($ok, $body, $meta) = fetch_url_auto($url);
    if (!$ok || empty($body)) {
        return null;
    }

    $results = json_decode($body, true);
    if (!empty($results) && isset($results[0]['lat']) && isset($results[0]['lon'])) {
        return [
            'lat' => $results[0]['lat'],
            'lon' => $results[0]['lon']
        ];
    }

    return null;
}

// Calcul de distance via OSRM (Open Source Routing Machine)
function calculate_distance($lat1, $lon1, $lat2, $lon2) {
    if (!$lat1 || !$lon1 || !$lat2 || !$lon2) {
        return null;
    }

    // Format: longitude,latitude (attention à l'ordre!)
    $url = 'https://router.project-osrm.org/route/v1/driving/'
        . $lon1 . ',' . $lat1 . ';' . $lon2 . ',' . $lat2
        . '?overview=false';

    list($ok, $body, $meta) = fetch_url_auto($url);
    if (!$ok || empty($body)) {
        return null;
    }

    $result = json_decode($body, true);
    if (isset($result['routes'][0]['distance'])) {
        // Distance en mètres, convertir en km
        return round($result['routes'][0]['distance'] / 1000, 1);
    }

    return null;
}

function execute($user, $langs, $db) {
    if (!$user->admin) {
        accessforbidden($langs->trans("AccessDenied"));
    }

    $langs->load('agenda');
    date_default_timezone_set('Europe/Paris');

    $month = GETPOST('month', 'int') ? GETPOST('month', 'int') : date('m');
    $year = GETPOST('year', 'int') ? GETPOST('year', 'int') : date('Y');

    $sql_users = "SELECT rowid, firstname, lastname FROM ".MAIN_DB_PREFIX."user";
    $sql_users .= " WHERE statut = 1 ORDER BY firstname ASC";

    $resql_users = $db->query($sql_users);
    if (!$resql_users) {
        dol_print_error($db);
        exit;
    }

    $users = array();
    while ($obj = $db->fetch_object($resql_users)) {
        $users[] = $obj;
    }

    $sql = "SELECT * FROM ".MAIN_DB_PREFIX."actioncomm";
    $sql .= " WHERE YEAR(datep) = ".$year;
    $sql .= " AND MONTH(datep) = ".$month;
    $sql .= " ORDER BY datep ASC";

    $resql = $db->query($sql);
    if (!$resql) {
        dol_print_error($db);
        exit;
    }

    $events = array();
    while ($obj = $db->fetch_object($resql)) {
        $events[] = $obj;
    }

    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename="agenda_export_'.sprintf('%04d', $year).'_'.sprintf('%02d', $month).'_'.date('Y-m-d_H-i-s').'.csv"');

    $output = fopen('php://output', 'w');
    fprintf($output, chr(0xEF).chr(0xBB).chr(0xBF));

    $csvHeaders = array('Date', 'Titre', 'Type', 'Durée (min)', 'Lieu');
    foreach ($users as $user_item) {
        $csvHeaders[] = $user_item->firstname.' '.$user_item->lastname;
    }

    fputcsv($output, $csvHeaders, ';');

    foreach ($events as $event) {
        $action = new ActionComm($db);
        $action->fetch($event->id);
        $eventDate = dol_print_date($action->datep, 'day');
        $title = $action->label;
        $appointmentType = '';
        if (isset($action->array_options['options_appointment_type'])) {
            $appointmentType = $action->array_options['options_appointment_type'];
        }

        $duration = '';
        $sql_check = "SELECT datep, datep2 FROM ".MAIN_DB_PREFIX."actioncomm";
        $sql_check .= " WHERE id = ".(int)$action->id;

        $res_check = $db->query($sql_check);
        if ($res_check) {
            $obj_check = $db->fetch_object($res_check);
            if ($obj_check && !empty($obj_check->datep2) && !empty($obj_check->datep)) {
                $tStart = strtotime($obj_check->datep);
                $tEnd = strtotime($obj_check->datep2);
                $duration = round(($tEnd - $tStart) / 60) . " minutes";
            }
        }

        $location = isset($action->location) ? $action->location : '';

        // Géocodage du lieu de l'événement
        $eventCoords = geocode_address($location);

        $row = array(
            $eventDate,
            $title,
            $appointmentType,
            $duration,
            $location
        );

        foreach ($users as $user_item) {
            $isUserInEvent = '';

            $sql_check = "SELECT U.address, U.zip, U.town
                FROM ".MAIN_DB_PREFIX."actioncomm_resources AS COMRES
                LEFT JOIN ".MAIN_DB_PREFIX."user AS U ON U.rowid = COMRES.fk_element
                WHERE COMRES.fk_actioncomm = ".(int)$action->id."
                  AND COMRES.fk_element = ".(int)$user_item->rowid."
                LIMIT 1";

            $res_check = $db->query($sql_check);
            if ($res_check) {
                $obj_check = $db->fetch_object($res_check);
                if ($obj_check) {
                    $userAddress = trim($obj_check->address . ' ' . $obj_check->zip . ' ' . $obj_check->town);
                    $userCoords = geocode_address($userAddress);

                    if ($eventCoords && $userCoords) {
                        $distance = calculate_distance(
                            $eventCoords['lat'],
                            $eventCoords['lon'],
                            $userCoords['lat'],
                            $userCoords['lon']
                        );

                        if ($distance !== null) {
                            $isUserInEvent = 'X (' . $distance . ' km)';
                        } else {
                            $isUserInEvent = 'X (distance n/a)';
                        }
                    } else {
                        $isUserInEvent = 'X (géoloc n/a)';
                    }
                }
            }

            $row[] = $isUserInEvent;
        }

        fputcsv($output, $row, ';');
    }

    fclose($output);
    exit;
};

execute($user, $langs, $db);