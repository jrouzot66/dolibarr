<?php

require_once DOL_DOCUMENT_ROOT . '/core/modules/DolibarrModules.class.php';

class modWorkshop extends DolibarrModules
{
    public function __construct($db)
    {
        global $langs, $conf;

        $this->db = $db;
        $this->numero = 190000;
        $this->rights_class = 'workshop';
        $this->family = 'other';
        $this->module_position = 50;
        $this->name = 'workshop';
        $this->description = 'Gestion des ateliers';
        $this->version = '1.0';
        $this->const_name = 'MAIN_MODULE_WORKSHOP';
        $this->special = 0;
        $this->picto = 'workshop.png@workshop';
        $this->module_parts = array();

        $this->dirs = array();
        // No setup page for now
        // $this->config_page_url = array('setup.php@workshop');

        $this->depends = array();
        $this->requiredby = array();
        $this->conflictwith = array();
        $this->phpmin = array(7, 0);
        $this->need_dolibarr_version = array(14, 0);

        $this->langfiles = array('workshop@workshop');

        $this->const = array();

        $this->tabs = array();

        $this->boxes = array();

        // Permissions
        $this->rights = array();
        $this->rights_class = 'workshop';
        $this->rights[0][0] = 190001;
        $this->rights[0][1] = 'Lire les ateliers';
        $this->rights[0][3] = 1;
        $this->rights[0][4] = 'read';

        $this->rights[1][0] = 190002;
        $this->rights[1][1] = 'Créer/modifier les ateliers';
        $this->rights[1][3] = 1;
        $this->rights[1][4] = 'write';

        $this->rights[2][0] = 190003;
        $this->rights[2][1] = 'Supprimer les ateliers';
        $this->rights[2][3] = 1;
        $this->rights[2][4] = 'delete';

        $this->menu = array();

        // Set top menu entry
        $this->menu_arbo = array(
            'topmenuname' => 'workshop',
            'mainmenucode' => 'workshop',
            'mainmenu' => 'Atelier',
            'menu' => array(
                'object' => 'workshop',
                'title' => 'Atelier',
                'url' => '/custom/workshop/list.php',
                'target' => '_self',
                'perms' => '$user->rights->workshop->read',
                'enabled' => '1',
                'position' => 100,
                'submenus' => array(
                     'new' => array(
                        'title' => 'Nouvel Atelier',
                        'url' => '/custom/workshop/card.php?action=create',
                        'target' => '_self',
                        'perms' => '$user->rights->workshop->write',
                        'enabled' => '1',
                        'position' => 10,
                    ),
                    'list' => array(
                        'title' => 'Liste',
                        'url' => '/custom/workshop/list.php',
                        'target' => '_self',
                        'perms' => '$user->rights->workshop->read',
                        'enabled' => '1',
                        'position' => 20,
                    )
                )
            )
        );
    }

    public function init($options = '')
    {
        $sql = array();
        $this->_load_tables('/custom/workshop/sql/');
        return $this->_init($sql, $options);
    }

    public function remove($options = '')
    {
        $sql = array();
        return $this->_remove($sql, $options);
    }
}
