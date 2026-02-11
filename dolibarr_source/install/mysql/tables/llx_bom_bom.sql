















CREATE TABLE llx_bom_bom(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	entity integer DEFAULT 1 NOT NULL,
	ref varchar(128) NOT NULL,
	bomtype integer DEFAULT 0,                  
	label varchar(255), 
	fk_product integer, 
	description text, 
	note_public text, 
	note_private text, 
	fk_warehouse integer,
	qty double(24,8),
	efficiency double(24,8) DEFAULT 1,
	duration double(24,8) DEFAULT NULL,
	date_creation datetime NOT NULL,
	date_valid datetime,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL,
	fk_user_modif integer, 
	fk_user_valid integer, 
	import_key varchar(14),
	model_pdf varchar(255), 
	status integer NOT NULL 
	
) ENGINE=innodb;
