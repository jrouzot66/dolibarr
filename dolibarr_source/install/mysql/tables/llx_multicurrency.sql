


















CREATE TABLE llx_multicurrency
( 
	rowid integer AUTO_INCREMENT PRIMARY KEY, 
	date_create datetime DEFAULT NULL, 
	code varchar(255) DEFAULT NULL, 
	name varchar(255) DEFAULT NULL, 
	entity integer DEFAULT 1,
	fk_user integer DEFAULT NULL
) ENGINE=innodb;
