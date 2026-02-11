

















CREATE TABLE llx_hrm_evaluationdet
(
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	date_creation datetime NOT NULL,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	fk_user_creat integer NOT NULL,
	fk_user_modif integer,
	fk_skill integer NOT NULL,
	fk_evaluation integer NOT NULL,
	rankorder integer NOT NULL,
	required_rank integer NOT NULL,
	comment text,
	import_key varchar(14)
) ENGINE=innodb;
