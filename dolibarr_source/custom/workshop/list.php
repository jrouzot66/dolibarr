<?php
require '../../main.inc.php';
require_once DOL_DOCUMENT_ROOT . '/core/class/html.form.class.php';
require_once DOL_DOCUMENT_ROOT . '/custom/workshop/class/workshop.class.php';

$langs->load('workshop@workshop');

llxHeader('', $langs->trans('WorkshopList'));

$sql = "SELECT rowid, workshop_date, location, welcomed_persons FROM " . MAIN_DB_PREFIX . "workshop ORDER BY workshop_date DESC";

$title = $langs->trans('WorkshopList');
print_barre_liste($title, 0, $_SERVER["PHP_SELF"], '', '', '', '', 0, -1, 'title_generic');

$resql = $db->query($sql);
if ($resql) {
    $num = $db->num_rows($resql);
    $i = 0;

    print '<div class="div-table-responsive">';
    print '<table class="noborder" width="100%">';
    print '<tr class="liste_titre">';
    print '<td>' . $langs->trans('WorkshopDate') . '</td>';
    print '<td>' . $langs->trans('Location') . '</td>';
    print '<td>' . $langs->trans('WelcomedPersons') . '</td>';
    print '<td align="right">';
    if ($user->rights->workshop->write) {
        print '<a class="button button-add" href="card.php?action=create">' . $langs->trans('NewWorkshop') . '</a>';
    }
    print '</td>';
    print '</tr>';

    if ($num > 0) {
        while ($i < $num) {
            $obj = $db->fetch_object($resql);
            print '<tr class="oddeven">';
            print '<td><a href="card.php?id=' . $obj->rowid . '">' . dol_print_date($db->jdate($obj->workshop_date), 'day') . '</a></td>';
            print '<td>' . dol_escape_htmltag($obj->location) . '</td>';
            print '<td>' . $obj->welcomed_persons . '</td>';
            print '<td align="right">';
            if ($user->rights->workshop->write) {
                print '<a class="button" style="min-width:50px" href="card.php?id='.$obj->rowid.'&action=view">' . $langs->trans('Voir') . '</a>';
                print '<a class="button" href="card.php?id='.$obj->rowid.'&action=edit">' . $langs->trans('Edit') . '</a>';
                print '<form action="card.php" method="POST" style="display:inline-block;">';
                print '<input type="hidden" name="id" value="' . $obj->rowid . '">';
                print '<input type="hidden" name="action" value="delete">';
                print '<input type="hidden" name="token" value="' . newToken() . '">';
                print '<button type="submit" class="button button-delete">' . $langs->trans('Delete') . '</button>';
                print '</form>';
            }
            print '</td>';
            print '</tr>';
            $i++;
        }
    } else {
        print '<tr><td colspan="4">' . $langs->trans('NoWorkshopFound') . '</td></tr>';
    }

    print '</table>';
    print '</div>';
    $db->free($resql);
} else {
    dol_print_error($db);
}

llxFooter();
