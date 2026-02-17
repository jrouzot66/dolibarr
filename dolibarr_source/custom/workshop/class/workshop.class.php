<?php

class Workshop
{
    public $id;
    public $error;
    public $workshop_date;
    public $location;
    public $volunteers;
    public $welcomed_persons;
    public $first_time_persons;
    public $phone_repairs;
    public $computer_repairs;
    public $digital_help;
    public $other_repairs;
    public $advice_diag;
    public $sales_count;
    public $partnership;
    public $donations_count;

    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function fetch($id)
    {
        $sql = "SELECT * FROM " . MAIN_DB_PREFIX . "workshop WHERE rowid = " . (int)$id;
        $res = $this->db->query($sql);
        if ($res) {
            $obj = $this->db->fetch_object($res);
            if ($obj) {
                $this->id = $obj->rowid;
                $this->workshop_date = $this->db->jdate($obj->workshop_date);
                $this->location = $obj->location;
                $this->volunteers = $obj->volunteers;
                $this->welcomed_persons = $obj->welcomed_persons;
                $this->first_time_persons = $obj->first_time_persons;
                $this->phone_repairs = $obj->phone_repairs;
                $this->computer_repairs = $obj->computer_repairs;
                $this->digital_help = $obj->digital_help;
                $this->other_repairs = $obj->other_repairs;
                $this->advice_diag = $obj->advice_diag;
                $this->sales_count = $obj->sales_count;
                $this->partnership = $obj->partnership;
                $this->donations_count = $obj->donations_count;
                return 1;
            }
        }
        return -1;
    }

    public function create($user)
    {
        global $langs;

        $this->db->begin();

        $sql = "INSERT INTO " . MAIN_DB_PREFIX . "workshop (";
        $sql .= "workshop_date, location, volunteers, welcomed_persons, first_time_persons, ";
        $sql .= "phone_repairs, computer_repairs, digital_help, other_repairs, advice_diag, ";
        $sql .= "sales_count, partnership, donations_count, fk_user_creat, date_creation";
        $sql .= ") VALUES (";
        $sql .= "'" . $this->db->escape(dol_print_date($this->workshop_date, '%Y-%m-%d %H:%M:%S')) . "', ";
        $sql .= "'" . $this->db->escape($this->location) . "', ";
        $sql .= "'" . $this->db->escape($this->volunteers) . "', ";
        $sql .= (int)$this->welcomed_persons . ", ";
        $sql .= (int)$this->first_time_persons . ", ";
        $sql .= "'" . $this->db->escape($this->phone_repairs) . "', ";
        $sql .= "'" . $this->db->escape($this->computer_repairs) . "', ";
        $sql .= "'" . $this->db->escape($this->digital_help) . "', ";
        $sql .= "'" . $this->db->escape($this->other_repairs) . "', ";
        $sql .= "'" . $this->db->escape($this->advice_diag) . "', ";
        $sql .= (int)$this->sales_count . ", ";
        $sql .= "'" . $this->db->escape($this->partnership) . "', ";
        $sql .= (int)$this->donations_count . ", ";
        $sql .= (int)$user->id . ", ";
        $sql .= "'" . dol_print_date(dol_now(), '%Y-%m-%d %H:%M:%S') . "'";
        $sql .= ")";

        $res = $this->db->query($sql);
        if ($res) {
            $this->id = $this->db->last_insert_id(MAIN_DB_PREFIX . "workshop");
            $this->db->commit();
            return $this->id;
        } else {
            $this->error = $this->db->lasterror();
            $this->db->rollback();
            return -1;
        }
    }

    public function update($user)
    {
        $this->db->begin();

        $sql = "UPDATE " . MAIN_DB_PREFIX . "workshop SET ";
        $sql .= "workshop_date = '" . $this->db->escape(dol_print_date($this->workshop_date, '%Y-%m-%d %H:%M:%S')) . "', ";
        $sql .= "location = '" . $this->db->escape($this->location) . "', ";
        $sql .= "volunteers = '" . $this->db->escape($this->volunteers) . "', ";
        $sql .= "welcomed_persons = " . (int)$this->welcomed_persons . ", ";
        $sql .= "first_time_persons = " . (int)$this->first_time_persons . ", ";
        $sql .= "phone_repairs = '" . $this->db->escape($this->phone_repairs) . "', ";
        $sql .= "computer_repairs = '" . $this->db->escape($this->computer_repairs) . "', ";
        $sql .= "digital_help = '" . $this->db->escape($this->digital_help) . "', ";
        $sql .= "other_repairs = '" . $this->db->escape($this->other_repairs) . "', ";
        $sql .= "advice_diag = '" . $this->db->escape($this->advice_diag) . "', ";
        $sql .= "sales_count = " . (int)$this->sales_count . ", ";
        $sql .= "partnership = '" . $this->db->escape($this->partnership) . "', ";
        $sql .= "donations_count = " . (int)$this->donations_count . ", ";
        $sql .= "fk_user_modif = " . (int)$user->id;
        $sql .= " WHERE rowid = " . (int)$this->id;

        $res = $this->db->query($sql);
        if ($res) {
            $this->db->commit();
            return 1;
        } else {
            $this->error = $this->db->lasterror();
            $this->db->rollback();
            return -1;
        }
    }

    public function delete()
    {
        $this->db->begin();
        $sql = "DELETE FROM " . MAIN_DB_PREFIX . "workshop WHERE rowid = " . (int)$this->id;
        $res = $this->db->query($sql);
        if ($res) {
            $this->db->commit();
            return 1;
        } else {
            $this->db->rollback();
            return -1;
        }
    }
}
