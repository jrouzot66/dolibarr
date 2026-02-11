

















CREATE TABLE llx_hrm_job(

	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
    label varchar(255) NOT NULL,
	description text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	deplacement varchar(255),
    note_public text,
    note_private text,
    fk_user_creat integer,
    fk_user_modif integer

) ENGINE=innodb;
