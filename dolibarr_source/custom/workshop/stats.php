<?php
require '../../main.inc.php';
require_once DOL_DOCUMENT_ROOT . '/core/class/html.form.class.php';

$langs->load('workshop@workshop');

// Get parameters
$period = GETPOST('period', 'alpha');
if (empty($period)) {
    $period = 'month';
}
$year = GETPOST('year', 'int') ? GETPOST('year', 'int') : date('Y');
$month = GETPOST('month', 'int') ? GETPOST('month', 'int') : date('m');
$week = GETPOST('week', 'int') ? GETPOST('week', 'int') : date('W');

$action = GETPOST('action', 'alpha');

// --- Handle CSV Export ---
if ($action == 'export') {
    $sql = "SELECT ";
    $sql .= " COUNT(*) as nb_workshops,";
    $sql .= " SUM(welcomed_persons) as total_welcomed,";
    $sql .= " SUM(first_time_persons) as total_first_time,";
    $sql .= " SUM(sales_count) as total_sales,";
    $sql .= " SUM(donations_count) as total_donations,";
    $sql .= " COUNT(NULLIF(phone_repairs, '')) as count_phone_repairs,";
    $sql .= " COUNT(NULLIF(computer_repairs, '')) as count_computer_repairs,";
    $sql .= " COUNT(NULLIF(digital_help, '')) as count_digital_help,";
    $sql .= " COUNT(NULLIF(other_repairs, '')) as count_other_repairs,";
    $sql .= " COUNT(NULLIF(advice_diag, '')) as count_advice_diag";
    $sql .= " FROM " . MAIN_DB_PREFIX . "workshop";

    $where = array();
    if ($period == 'year') {
        $where[] = " YEAR(workshop_date) = " . $db->escape($year);
    } elseif ($period == 'month') {
        $where[] = " YEAR(workshop_date) = " . $db->escape($year) . " AND MONTH(workshop_date) = " . $db->escape($month);
    } elseif ($period == 'week') {
        $where[] = " YEAR(workshop_date) = " . $db->escape($year) . " AND WEEK(workshop_date, 1) = " . $db->escape($week);
    }

    if (count($where) > 0) {
        $sql .= " WHERE " . implode(' AND ', $where);
    }

    $resql = $db->query($sql);
    if (!$resql) {
        dol_print_error($db);
        exit;
    }
    $stats = $db->fetch_object($resql);

    header('Content-Type: text/csv; charset=utf-8');
    header('Content-Disposition: attachment; filename="workshop_stats_'.$period.'_'.date('YmdHis').'.csv"');

    $output = fopen('php://output', 'w');
    fputcsv($output, array(
        $langs->trans('NumberOfWorkshops'),
        $langs->trans('TotalWelcomedPersons'),
        $langs->trans('TotalFirstTimePersons'),
        $langs->trans('TotalSales'),
        $langs->trans('TotalDonations'),
        $langs->trans('PhoneRepairs'),
        $langs->trans('ComputerRepairs'),
        $langs->trans('DigitalHelp'),
        $langs->trans('OtherRepairs'),
        $langs->trans('AdviceDiag')
    ), ';');

    fputcsv($output, array(
        $stats->nb_workshops,
        (int)$stats->total_welcomed,
        (int)$stats->total_first_time,
        (int)$stats->total_sales,
        (int)$stats->total_donations,
        (int)$stats->count_phone_repairs,
        (int)$stats->count_computer_repairs,
        (int)$stats->count_digital_help,
        (int)$stats->count_other_repairs,
        (int)$stats->count_advice_diag
    ), ';');

    fclose($output);
    exit;
}


// --- SQL query based on period ---
$sql = "SELECT ";
$sql .= " COUNT(*) as nb_workshops,";
$sql .= " SUM(welcomed_persons) as total_welcomed,";
$sql .= " SUM(first_time_persons) as total_first_time,";
$sql .= " SUM(sales_count) as total_sales,";
$sql .= " SUM(donations_count) as total_donations,";
$sql .= " COUNT(NULLIF(phone_repairs, '')) as count_phone_repairs,";
$sql .= " COUNT(NULLIF(computer_repairs, '')) as count_computer_repairs,";
$sql .= " COUNT(NULLIF(digital_help, '')) as count_digital_help,";
$sql .= " COUNT(NULLIF(other_repairs, '')) as count_other_repairs,";
$sql .= " COUNT(NULLIF(advice_diag, '')) as count_advice_diag";
$sql .= " FROM " . MAIN_DB_PREFIX . "workshop";

$where = array();
if ($period == 'year') {
    $where[] = " YEAR(workshop_date) = " . $db->escape($year);
} elseif ($period == 'month') {
    $where[] = " YEAR(workshop_date) = " . $db->escape($year) . " AND MONTH(workshop_date) = " . $db->escape($month);
} elseif ($period == 'week') {
    $where[] = " YEAR(workshop_date) = " . $db->escape($year) . " AND WEEK(workshop_date, 1) = " . $db->escape($week);
}

if (count($where) > 0) {
    $sql .= " WHERE " . implode(' AND ', $where);
}

$resql = $db->query($sql);
if (!$resql) {
    dol_print_error($db);
    exit;
}
$stats = $db->fetch_object($resql);


// --- View ---
llxHeader('', $langs->trans('WorkshopStats'));

$title = $langs->trans('WorkshopStats');
print_barre_liste($title, 0, $_SERVER["PHP_SELF"], '', '', '', '', 0, -1, 'title_generic');

// --- Period selection form ---
print '<form method="GET" action="' . $_SERVER['PHP_SELF'] . '">';
print $langs->trans('Period') . ': ';
print '<select name="period" onchange="this.form.submit()">';
print '<option value="week"'.($period == 'week' ? ' selected' : '').'>'.$langs->trans('Week').'</option>';
print '<option value="month"'.($period == 'month' ? ' selected' : '').'>'.$langs->trans('Month').'</option>';
print '<option value="year"'.($period == 'year' ? ' selected' : '').'>'.$langs->trans('Year').'</option>';
print '</select>';

if ($period == 'year') {
    print ' <input type="number" name="year" value="'.$year.'" onchange="this.form.submit()">';
} elseif ($period == 'month') {
    print ' <input type="number" name="month" value="'.$month.'" size="2" onchange="this.form.submit()">';
    print ' <input type="number" name="year" value="'.$year.'" size="4" onchange="this.form.submit()">';
} elseif ($period == 'week') {
    print ' <input type="number" name="week" value="'.$week.'" size="2" onchange="this.form.submit()">';
    print ' <input type="number" name="year" value="'.$year.'" size="4" onchange="this.form.submit()">';
}
print '</form>';


// --- Display stats ---
print '<table class="noborder" width="100%">';
print '<tr class="liste_titre"><td colspan="2">'.$langs->trans('Statistics').'</td></tr>';

print '<tr class="oddeven"><td>'.$langs->trans('NumberOfWorkshops').'</td><td>'.$stats->nb_workshops.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('TotalWelcomedPersons').'</td><td>'.(int)$stats->total_welcomed.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('TotalFirstTimePersons').'</td><td>'.(int)$stats->total_first_time.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('TotalSales').'</td><td>'.(int)$stats->total_sales.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('TotalDonations').'</td><td>'.(int)$stats->total_donations.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('PhoneRepairs').'</td><td>'.(int)$stats->count_phone_repairs.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('ComputerRepairs').'</td><td>'.(int)$stats->count_computer_repairs.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('DigitalHelp').'</td><td>'.(int)$stats->count_digital_help.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('OtherRepairs').'</td><td>'.(int)$stats->count_other_repairs.'</td></tr>';
print '<tr class="oddeven"><td>'.$langs->trans('AdviceDiag').'</td><td>'.(int)$stats->count_advice_diag.'</td></tr>';

print '</table>';
// --- Export Button ---
print '<div class="tabsAction">';
$export_url = $_SERVER['PHP_SELF'] . '?action=export&period='.$period.'&year='.$year.'&month='.$month.'&week='.$week;
print '<a class="butAction" href="'.$export_url.'">'.$langs->trans('ExportCSV').'</a>';
print '</div>';
llxFooter();
?>
