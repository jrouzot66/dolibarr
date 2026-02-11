
















CREATE TABLE llx_hrm_job_user(
    
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	
	description text,
	date_creation datetime NOT NULL,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	fk_contrat integer,
	fk_user integer,
	fk_job integer NOT NULL,
	date_start datetime,
	date_end datetime,
	abort_comment varchar(255),
    note_public text,
    note_private text,
    fk_user_creat integer,
    fk_user_modif integer
	
) ENGINE=innodb;
