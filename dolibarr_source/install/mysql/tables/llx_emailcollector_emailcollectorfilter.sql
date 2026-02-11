















CREATE TABLE llx_emailcollector_emailcollectorfilter(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	fk_emailcollector INTEGER NOT NULL,
	type varchar(128) NOT NULL, 
	rulevalue varchar(128) NULL, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	import_key varchar(14), 
	status integer NOT NULL
	
) ENGINE=innodb;
