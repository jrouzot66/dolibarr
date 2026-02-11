

















CREATE TABLE llx_hrm_skilldet(
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	fk_skill integer NOT NULL,
	rankorder integer NOT NULL DEFAULT '1',
	description text,
	fk_user_creat integer NOT NULL,
	fk_user_modif integer
) ENGINE=innodb;
