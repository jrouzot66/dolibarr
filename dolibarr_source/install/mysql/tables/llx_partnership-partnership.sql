

















CREATE TABLE llx_partnership
(
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	entity integer DEFAULT 1 NOT NULL,	
	ref varchar(128) DEFAULT '(PROV)' NOT NULL, 
	status smallint DEFAULT 0 NOT NULL, 
	fk_type integer DEFAULT 0 NOT NULL,
	fk_soc integer, 
	fk_member integer,
	email_partnership varchar(64),      
	date_partnership_start date NOT NULL, 
	date_partnership_end date NULL, 
	reason_decline_or_cancel text NULL,
	date_creation datetime NOT NULL, 
	fk_user_creat integer NULL,			
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_modif integer, 
	note_private text, 
	note_public text, 
	last_main_doc varchar(255), 
	url_to_check varchar(255),							
	count_last_url_check_error integer DEFAULT '0',		
	last_check_backlink datetime NULL,					
	ip varchar(250),
	import_key varchar(14),
	model_pdf varchar(255)
	
) ENGINE=innodb;