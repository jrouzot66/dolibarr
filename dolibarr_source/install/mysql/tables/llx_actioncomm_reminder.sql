















CREATE TABLE llx_actioncomm_reminder(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	dateremind datetime NOT NULL, 
	typeremind varchar(32) NOT NULL, 
	fk_user integer NOT NULL, 
	offsetvalue integer NOT NULL, 
	offsetunit varchar(1) NOT NULL,
	status integer NOT NULL DEFAULT 0,
	lasterror varchar(128) NULL,
	entity integer NOT NULL DEFAULT 1,
	fk_actioncomm integer NOT NULL,
	fk_email_template integer

	
) ENGINE=innodb;
