<?php
/**
 *  \file       htdocs/comm/action/export.php
 *  \ingroup    agenda
 *  \brief      Export calendar events to CSV (admin only)
 */

// Load Dolibarr environment
require '../../main.inc.php';
require_once DOL_DOCUMENT_ROOT.'/comm/action/class/actioncomm.class.php';

$api_key = '374b3668188f41aa946021786f6c8148';
$url = 'https://api.geoapify.com/v1';

function fetch_url_auto($url)
{
    $url = str_replace('|', '%7C', $url);
    $context = stream_context_create([
        'http' => [
            'method' => 'GET',
            'max_redirects' => 5,
            'ignore_errors' => true,
            'header' => "User-Agent: PHP/" . PHP_VERSION . "\r\n",
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
        $err = error_get_last();
        $msg = isset($err['message']) ? $err['message'] : 'Unknown error using file_get_contents';
    }

    if (extension_loaded('curl')) {
        try {
            list($code, $res) = http_get_curl($url);
            return [true, $res, $code];
        } catch (Exception $e) {
            return [false, $e->getMessage(), null];
        }
    }

    return [false, 'allow_url_fopen disabled and cURL extension not available', null];
}

function http_get_curl($url) {
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_USERAGENT, 'PHP-cURL');
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
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

function execute($url, $user, $langs, $db, $api_key) {
    if (!$user->admin) {
        accessforbidden($langs->trans("AccessDenied"));
    }

    $langs->load('agenda');
    date_default_timezone_set('Europe/Paris');

    $currentYear = date('Y');
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
    $sql .= " WHERE YEAR(datep) = ".$currentYear;
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
    header('Content-Disposition: attachment; filename="agenda_export_'.$currentYear.'_'.date('Y-m-d_H-i-s').'.csv"');

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
        $mapping = str_replace(' ', '%20', $location);

        list($ok, $body, $meta) = fetch_url_auto($url . '/geocode/search?text=' . $mapping . '&format=json&apiKey=' . $api_key);
        $content = json_decode($body, true);
        $mappingLocation = isset($content['results'][0]['bbox']['lon1']) && isset($content['results'][0]['bbox']['lat1'])
            ? $content['results'][0]['bbox']['lat1'] . ',' . $content['results'][0]['bbox']['lon1'] : null;

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
                    $isUserInEvent = 'Oui ';
                    $address = '' . $obj_check->address . ' ' . $obj_check->zip . ' ' . $obj_check->town;
                    $mapping = str_replace(' ', '%20', $address);
                    list($ok, $body, $meta) = fetch_url_auto($url . '/geocode/search?text=' . $mapping . '&format=json&apiKey=' . $api_key);
                    $content = json_decode($body, true);
                    $mappingUserLocation = isset($content['results'][0]['bbox']['lon1']) && isset($content['results'][0]['bbox']['lat1'])
                        ? $content['results'][0]['bbox']['lat1'] . ',' . $content['results'][0]['bbox']['lon1'] : null;
                    if ($mappingUserLocation !== null && $mappingLocation !== null) {
                        list($ok, $body, $meta) = fetch_url_auto($url . '/routing?waypoints=' . $mappingLocation . '|' . $mappingUserLocation . '&details=elevation&mode=drive&apiKey=' . $api_key);
                        $content = json_decode($body, true);
                        if (isset($content['features'][0]['properties']['distance'])) {
                        $distance = $content['features'][0]['properties']['distance'] / 1000;
                        $distance = '( ' . round($distance, 1) . ' km )';
                        } else {
                            $distance = "Informations manquantes";
                        }
                        $isUserInEvent .= $distance;
                    } else {
                        $isUserInEvent .= "(Informations manquantes)";
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

execute($url, $user, $langs, $db, $api_key);



