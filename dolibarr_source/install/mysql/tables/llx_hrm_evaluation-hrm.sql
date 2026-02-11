

















CREATE TABLE llx_hrm_evaluation(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	ref varchar(128) DEFAULT '(PROV)' NOT NULL, 
	label varchar(255), 
	description text, 
	note_public text, 
	note_private text, 
	model_pdf varchar(255), 
	last_main_doc varchar(255),
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	import_key varchar(14), 
	status smallint NOT NULL, 
	date_eval date,
	fk_user integer NOT NULL, 
	fk_job integer NOT NULL
    
) ENGINE=innodb;
