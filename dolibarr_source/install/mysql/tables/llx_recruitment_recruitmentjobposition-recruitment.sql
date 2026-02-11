















CREATE TABLE llx_recruitment_recruitmentjobposition(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	ref varchar(128) DEFAULT '(PROV)' NOT NULL,
	entity INTEGER DEFAULT 1 NOT NULL,
	label varchar(255) NOT NULL, 
	qty integer DEFAULT 1 NOT NULL, 
	fk_soc integer, 
	fk_project integer, 
	fk_user_recruiter integer,
	email_recruiter varchar(255),
	fk_user_supervisor integer, 
	fk_establishment integer, 
	date_planned date,
	remuneration_suggested varchar(255), 
	description text, 
	note_public text, 
	note_private text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	last_main_doc varchar(255), 
	import_key varchar(14), 
	model_pdf varchar(255), 
	status smallint NOT NULL
	
) ENGINE=innodb;
