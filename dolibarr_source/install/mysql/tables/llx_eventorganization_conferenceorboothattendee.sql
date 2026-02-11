















CREATE TABLE llx_eventorganization_conferenceorboothattendee(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	ref varchar(128) NOT NULL, 
	fk_soc integer,
	fk_actioncomm integer,
	fk_project integer NOT NULL,
	fk_invoice integer NULL,
	email varchar(128),
    email_company varchar(128),
	firstname varchar(100),
	lastname varchar(100),
	date_subscription datetime, 
	amount double DEFAULT NULL, 
	note_public text, 
	note_private text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer, 
	fk_user_modif integer, 
	last_main_doc varchar(255), 
	ip varchar(250),              
	import_key varchar(14), 
	model_pdf varchar(255), 
	status smallint NOT NULL
	
) ENGINE=innodb;
