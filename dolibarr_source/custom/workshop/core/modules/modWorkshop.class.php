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
		$this->tabs[] = array('url' => '/custom/workshop/list.php', 'title' => $langs->trans("WorkshopList"), 'main' => 1, 'left' => 1);
		$this->tabs[] = array('url' => '/custom/workshop/stats.php', 'title' => $langs->trans("WorkshopStats"), 'main' => 1, 'left' => 1);
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
