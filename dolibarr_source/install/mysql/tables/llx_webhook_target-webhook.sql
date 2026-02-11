















CREATE TABLE llx_webhook_target(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	ref varchar(128) NOT NULL, 
	label varchar(255), 
	description text, 
	note_public text, 
	note_private text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	import_key varchar(14),
	status integer DEFAULT 0 NOT NULL, 
	url varchar(255) NOT NULL,
	connection_method varchar(255) NULL,	
	connection_data varchar(255) NULL, 		
	trigger_codes text NULL					
	
) ENGINE=innodb;
