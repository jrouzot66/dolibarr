


















CREATE TABLE llx_expensereport_rules (
  rowid						integer AUTO_INCREMENT PRIMARY KEY,
  datec						datetime  DEFAULT NULL,
  tms						timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dates						datetime NOT NULL,
  datee						datetime NOT NULL,
  amount					double(24,8) NOT NULL,
  restrictive				tinyint NOT NULL,
  fk_user					integer DEFAULT NULL,
  fk_usergroup				integer DEFAULT NULL,
  fk_c_type_fees			integer NOT NULL,
  code_expense_rules_type	varchar(50) NOT NULL,
  is_for_all				tinyint DEFAULT 0,
  entity					integer DEFAULT 1
) ENGINE=innodb;
