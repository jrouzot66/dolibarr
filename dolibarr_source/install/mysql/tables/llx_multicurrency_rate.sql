


















CREATE TABLE llx_multicurrency_rate
( 
	rowid integer AUTO_INCREMENT PRIMARY KEY, 
	date_sync datetime DEFAULT NULL,  
	rate double NOT NULL DEFAULT 0,
	rate_indirect double DEFAULT 0,
	fk_multicurrency integer NOT NULL,
	entity integer DEFAULT 1
) ENGINE=innodb;
