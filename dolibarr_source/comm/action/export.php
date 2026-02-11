<?php
/**
 *  \file       htdocs/comm/action/export.php
 *  \ingroup    agenda
 *  \brief      Export calendar events to CSV (admin only)
 */

// Load Dolibarr environment
require '../../main.inc.php';
require_once DOL_DOCUMENT_ROOT.'/comm/action/class/actioncomm.class.php';

// Check if user is admin
if (!$user->admin) {
    accessforbidden($langs->trans("AccessDenied"));
}

// Get language
$langs->load('agenda');

// Set timezone to Paris
date_default_timezone_set('Europe/Paris');

// Get current year
$currentYear = date('Y');

// Get all active users
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

// Get all events for current year
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

// Set headers for CSV download
///header('Content-Type: text/csv; charset=utf-8');
///header('Content-Disposition: attachment; filename="agenda_export_'.$currentYear.'_'.date('Y-m-d_H-i-s').'.csv"');

// Create output stream
$output = fopen('php://output', 'w');

// Add BOM for Excel UTF-8 compatibility
///fprintf($output, chr(0xEF).chr(0xBB).chr(0xBF));

// Build CSV header
$csvHeaders = array('Date', 'Titre', 'Type', 'Durée (min)', 'Lieu');

// Add all users as columns
foreach ($users as $user_item) {
    $csvHeaders[] = $user_item->firstname.' '.$user_item->lastname;
}

///fputcsv($output, $csvHeaders, ';');

// Write event data
foreach ($events as $event) {
    // Load full event details
    $action = new ActionComm($db);
    $action->fetch($event->id);

    // Date in Paris timezone
    $eventDate = dol_print_date($action->datep, 'day');

    // Title
    $title = $action->label;

    // Appointment type (extrafield)
    $appointmentType = '';
    if (isset($action->array_options['options_appointment_type'])) {
        $appointmentType = $action->array_options['options_appointment_type'];
    }

    // Duration in minutes - Calculate delta between datep and datep2
    $duration = '';
    $sql_check = "SELECT datep, datep2 FROM ".MAIN_DB_PREFIX."actioncomm";
    $sql_check .= " WHERE id = ".(int)$action->id;

    $res_check = $db->query($sql_check);
    if ($res_check) {
        $obj_check = $db->fetch_object($res_check);
        if ($obj_check && !empty($obj_check->datep2) && !empty($obj_check->datep)) {
            //print_r(strtotime($obj_check->datep)."\n");
            $tStart = strtotime($obj_check->datep);
            $tEnd = strtotime($obj_check->datep2);
            $duration = round(($tEnd - $tStart) / 60) . " minutes";
        }
    }

    // Location
    $location = isset($action->location) ? $action->location : '';

    // Build row
    $row = array(
        $eventDate,
        $title,
        $appointmentType,
        $duration,
        $location
    );

    // Add user attendance
    foreach ($users as $user_item) {
        $isUserInEvent = '';

        // Check if user is linked to this event via actioncomm_resources
        $sql_check = "SELECT COUNT(*) as cnt FROM ".MAIN_DB_PREFIX."actioncomm_resources";
        $sql_check .= " WHERE fk_actioncomm = ".(int)$action->id;
        $sql_check .= " AND fk_element = ".(int)$user_item->rowid;

        $res_check = $db->query($sql_check);
        if ($res_check) {
            $obj_check = $db->fetch_object($res_check);
            if ($obj_check && $obj_check->cnt > 0) {
                $isUserInEvent = 'X';
            }
        }

        $row[] = $isUserInEvent;
    }

    fputcsv($output, $row, ';');
}

// Close output
fclose($output);
exit;