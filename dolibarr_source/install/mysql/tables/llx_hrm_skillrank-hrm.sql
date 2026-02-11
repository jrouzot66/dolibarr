
















CREATE TABLE llx_hrm_skillrank
(
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	fk_skill integer NOT NULL,
	rankorder integer NOT NULL,
	fk_object integer NOT NULL,
	date_creation datetime NOT NULL,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	fk_user_creat integer NOT NULL,
	fk_user_modif integer,
	objecttype varchar(128) NOT NULL
) ENGINE=innodb;
