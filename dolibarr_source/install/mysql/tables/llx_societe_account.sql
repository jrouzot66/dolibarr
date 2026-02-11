

















CREATE TABLE llx_societe_account(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	entity	integer DEFAULT 1,
	
	login             varchar(128) NOT NULL,    
	pass_encoding     varchar(24),
	pass_crypted      varchar(128),             
	pass_temp         varchar(128),			    
	fk_soc            integer,                  
	fk_website        integer,					
	site              varchar(128) NOT NULL,	
	site_account      varchar(128),				
	key_account       varchar(128),				
	note_private      text,
	date_last_login   datetime,
	date_previous_login datetime,
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	import_key varchar(14), 
	status integer 
	
) ENGINE=innodb;
