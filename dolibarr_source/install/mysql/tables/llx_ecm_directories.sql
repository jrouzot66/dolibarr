




















CREATE TABLE llx_ecm_directories
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  label				varchar(64) NOT NULL,
  entity			integer DEFAULT 1 NOT NULL,		
  fk_parent			integer,
  description		varchar(255) NOT NULL,
  cachenbofdoc		integer NOT NULL DEFAULT 0,
  fullpath    		varchar(750),
  extraparams		varchar(255),					
  date_c			datetime,
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_c			integer,
  fk_user_m			integer,
  note_private		text,
  note_public		text,
  acl				text
) ENGINE=innodb;
