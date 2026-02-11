















CREATE TABLE llx_emailcollector_emailcollectoraction(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	fk_emailcollector INTEGER NOT NULL,
	type varchar(128) NOT NULL, 
	actionparam text NULL, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	position integer DEFAULT 0,
	import_key varchar(14),
	status integer NOT NULL
	
) ENGINE=innodb;
