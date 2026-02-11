















CREATE TABLE llx_recruitment_recruitmentcandidature(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	entity integer NOT NULL DEFAULT 1,
	ref varchar(128) DEFAULT '(PROV)' NOT NULL,
	fk_recruitmentjobposition INTEGER NULL,
	description text, 
	note_public text, 
	note_private text, 
	date_creation datetime NOT NULL,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	fk_user integer, 						
	import_key varchar(14), 
	model_pdf varchar(255), 
	status smallint NOT NULL, 
	firstname varchar(128), 
	lastname varchar(128), 
	email varchar(255),
	phone varchar(64), 
	date_birth date,
	remuneration_requested integer, 
	remuneration_proposed integer,
	email_msgid varchar(175),				
	email_date datetime,
	fk_recruitment_origin INTEGER NULL
	
) ENGINE=innodb;
