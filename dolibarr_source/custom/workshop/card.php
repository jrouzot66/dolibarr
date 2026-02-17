<?php
require '../../main.inc.php';

require_once DOL_DOCUMENT_ROOT . '/custom/workshop/class/workshop.class.php';
require_once DOL_DOCUMENT_ROOT . '/core/class/html.form.class.php';

$langs->load('workshop@workshop');
$langs->load('users');

$action = GETPOST('action', 'alpha');
$id = GETPOST('id', 'int');

// Default action
if ($id > 0 && empty($action)) {
    $action = 'view';
}


//--------------------------------------------------------------------//
// ACTIONS
//--------------------------------------------------------------------//

if ($action == 'save' && !GETPOST('cancel', 'alpha')) {
    if (! is_object($user) || !$user->rights->workshop->write) {
        accessforbidden();
    }

    $object = new Workshop($db);
    $object->id = $id;

    // Assign values from POST safely
    $object->volunteers = GETPOST('volunteers', 'string');
    $object->location = GETPOST('location', 'string');
    $object->welcomed_persons = GETPOST('welcomed_persons', 'int');
    $object->first_time_persons = GETPOST('first_time_persons', 'int');
    $object->phone_repairs = GETPOST('phone_repairs', 'string');
    $object->computer_repairs = GETPOST('computer_repairs', 'string');
    $object->digital_help = GETPOST('digital_help', 'string');
    $object->other_repairs = GETPOST('other_repairs', 'string');
    $object->advice_diag = GETPOST('advice_diag', 'string');
    $object->sales_count = GETPOST('sales_count', 'int');
    $object->partnership = GETPOST('partnership', 'string');
    $object->donations_count = GETPOST('donations_count', 'int');

    $object->workshop_date = dol_mktime(12, 0, 0, GETPOST('workshop_datemonth'), GETPOST('workshop_dateday'), GETPOST('workshop_dateyear'));

    $res = ($id > 0) ? $object->update($user) : $object->create($user);

    if ($res > 0) {
        header('Location: ' . DOL_URL_ROOT . '/custom/workshop/card.php?id=' . ($id ? $id : $res));
        exit;
    } else {
        setEventMessage($object->error, 'errors');
        $action = ($id > 0) ? 'edit' : 'create'; // Stay on the page to show the error
    }
}

if ($action == 'delete') {
    if (empty($user->rights->workshop->delete)) {
        accessforbidden();
    }
    $object = new Workshop($db);
    if ($id > 0) {
        $object->fetch($id);
        $object->delete();
    }
    header('Location: ' . DOL_URL_ROOT . '/custom/workshop/list.php');
    exit;
}


//--------------------------------------------------------------------//
// VIEW
//--------------------------------------------------------------------//

llxHeader('', $langs->trans('Workshop'));

$object = new Workshop($db);

// Fetch object if id is provided
if ($id > 0) {
    if ($object->fetch($id) < 0) {
        dol_print_error($db, $object->error);
        exit;
    }
}

// View mode
if ($action == 'view' && $id > 0) {
    $title = $langs->trans('Workshop');
    dol_fiche_head(array(), '', $title, 0, 'workshop');

    print '<table class="border" width="100%">';

    // Workshop Date
    print '<tr><td class="titlefield">' . $langs->trans('WorkshopDate') . '</td><td>' . dol_print_date($object->workshop_date, 'day') . '</td></tr>';

    // Location
    print '<tr><td>' . $langs->trans('Location') . '</td><td>' . dol_escape_htmltag($object->location) . '</td></tr>';

    // Volunteers
    print '<tr><td>' . $langs->trans('Volunteers') . '</td><td>' . dol_escape_htmltag($object->volunteers) . '</td></tr>';

    // Welcomed Persons
    print '<tr><td>' . $langs->trans('WelcomedPersons') . '</td><td>' . $object->welcomed_persons . '</td></tr>';

    // First Time Persons
    print '<tr><td>' . $langs->trans('FirstTimePersons') . '</td><td>' . $object->first_time_persons . '</td></tr>';

    // Phone Repairs
    print '<tr><td>' . $langs->trans('PhoneRepairs') . '</td><td>' . dol_escape_htmltag($object->phone_repairs) . '</td></tr>';

    // Computer Repairs
    print '<tr><td>' . $langs->trans('ComputerRepairs') . '</td><td>' . dol_escape_htmltag($object->computer_repairs) . '</td></tr>';

    // Digital Help
    print '<tr><td>' . $langs->trans('DigitalHelp') . '</td><td>' . dol_escape_htmltag($object->digital_help) . '</td></tr>';

    // Other Repairs
    print '<tr><td>' . $langs->trans('OtherRepairs') . '</td><td>' . dol_escape_htmltag($object->other_repairs) . '</td></tr>';

    // Advice / Diag
    print '<tr><td>' . $langs->trans('AdviceDiag') . '</td><td>' . dol_escape_htmltag($object->advice_diag) . '</td></tr>';

    // Sales Count
    print '<tr><td>' . $langs->trans('SalesCount') . '</td><td>' . $object->sales_count . '</td></tr>';

    // Partnership
    print '<tr><td>' . $langs->trans('Partnership') . '</td><td>' . dol_escape_htmltag($object->partnership) . '</td></tr>';

    // Donations Count
    print '<tr><td>' . $langs->trans('DonationsCount') . '</td><td>' . $object->donations_count . '</td></tr>';

    print '</table>';

    dol_fiche_end();

    // Buttons
    print '<div class="tabsAction">';
    if ($user->rights->workshop->write) {
        print '<a class="button" href="' . $_SERVER['PHP_SELF'] . '?id=' . $id . '&action=edit">' . $langs->trans('Edit') . '</a>';
    }
    if ($user->rights->workshop->delete) {
        print '<form action="' . $_SERVER['PHP_SELF'] . '" method="POST" style="display:inline-block; margin-left: 10px;">';
        print '<input type="hidden" name="id" value="' . $id . '">';
        print '<input type="hidden" name="action" value="delete">';
        print '<input type="hidden" name="token" value="' . newToken() . '">';
        print '<button type="submit" class="button button-delete">' . $langs->trans('Delete') . '</button>';
        print '</form>';
    }
    print '</div>';

} elseif ($action == 'create' || $action == 'edit') {

    $form = new Form($db);

    $title = ($action == 'create') ? $langs->trans('NewWorkshop') : $langs->trans('EditWorkshop');
    dol_fiche_head(array(), '', $title, 0, 'workshop');

    // Formulaire de création / édition
    print '<form action="' . $_SERVER["PHP_SELF"] . '" method="post">';
    print '<input type="hidden" name="token" value="' . newToken() . '">';
    print '<input type="hidden" name="action" value="save">';
    if ($id > 0) {
        print '<input type="hidden" name="id" value="' . $object->id . '">';
    }

    print '<table class="border" width="100%">';

    // Workshop Date
    print '<tr><td class="titlefield mandatory">' . $langs->trans('WorkshopDate') . '</td><td>';
    print $form->selectDate($object->workshop_date, 'workshop_date', 0, 0, 0, '', 1, 1);
    print '</td></tr>';

    // Location
    print '<tr><td>' . $langs->trans('Location') . '</td><td><input type="text" name="location" value="' . dol_escape_htmltag($object->location) . '"></td></tr>';

    // Volunteers - Replaced with a simple text field
    print '<tr><td>' . $langs->trans('Volunteers') . '</td><td><input type="text" name="volunteers" value="' . dol_escape_htmltag($object->volunteers) . '"></td></tr>';

    // Welcomed Persons
    print '<tr><td>' . $langs->trans('WelcomedPersons') . '</td><td><input type="number" name="welcomed_persons" value="' . $object->welcomed_persons . '"></td></tr>';

    // First Time Persons
    print '<tr><td>' . $langs->trans('FirstTimePersons') . '</td><td><input type="number" name="first_time_persons" value="' . $object->first_time_persons . '"></td></tr>';

    // Phone Repairs
    print '<tr><td>' . $langs->trans('PhoneRepairs') . '</td><td><textarea name="phone_repairs" rows="3">' . dol_escape_htmltag($object->phone_repairs) . '</textarea></td></tr>';

    // Computer Repairs
    print '<tr><td>' . $langs->trans('ComputerRepairs') . '</td><td><textarea name="computer_repairs" rows="3">' . dol_escape_htmltag($object->computer_repairs) . '</textarea></td></tr>';

    // Digital Help
    print '<tr><td>' . $langs->trans('DigitalHelp') . '</td><td><textarea name="digital_help" rows="3">' . dol_escape_htmltag($object->digital_help) . '</textarea></td></tr>';

    // Other Repairs
    print '<tr><td>' . $langs->trans('OtherRepairs') . '</td><td><textarea name="other_repairs" rows="3">' . dol_escape_htmltag($object->other_repairs) . '</textarea></td></tr>';

    // Advice / Diag
    print '<tr><td>' . $langs->trans('AdviceDiag') . '</td><td><textarea name="advice_diag" rows="3">' . dol_escape_htmltag($object->advice_diag) . '</textarea></td></tr>';

    // Sales Count
    print '<tr><td>' . $langs->trans('SalesCount') . '</td><td><input type="number" name="sales_count" value="' . $object->sales_count . '"></td></tr>';

    // Partnership
    print '<tr><td>' . $langs->trans('Partnership') . '</td><td><input type="text" name="partnership" value="' . dol_escape_htmltag($object->partnership) . '"></td></tr>';

    // Donations Count
    print '<tr><td>' . $langs->trans('DonationsCount') . '</td><td><input type="number" name="donations_count" value="' . $object->donations_count . '"></td></tr>';

    print '</table>';

    dol_fiche_end();

    print '<div class="center">';
    print '<input type="submit" class="button" value="' . $langs->trans('Save') . '">';
    print ' &nbsp; &nbsp; <a class="button" href="' . ($id > 0 ? $_SERVER['PHP_SELF'].'?id='.$id : DOL_URL_ROOT.'/custom/workshop/list.php') . '">' . $langs->trans('Cancel') . '</a>';
    print '</div>';
    print '</form>';

}

llxFooter();
