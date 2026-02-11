

















CREATE TABLE llx_blockedlog 
( 
	rowid integer AUTO_INCREMENT PRIMARY KEY, 
	entity integer DEFAULT 1 NOT NULL, 
	date_creation	datetime,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	action varchar(50), 
	amounts double(24,8) NOT NULL, 
	element varchar(50), 
	fk_user	integer,
	user_fullname varchar(255),
	fk_object integer,
	ref_object varchar(255), 
	date_object	datetime,
	signature varchar(100) NOT NULL, 
	signature_line varchar(100) NOT NULL, 
	object_data	mediumtext,
	object_version varchar(32) DEFAULT '',
	certified integer
) ENGINE=innodb;

