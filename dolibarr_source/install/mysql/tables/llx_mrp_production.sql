















CREATE TABLE llx_mrp_production(
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	fk_mo integer NOT NULL,
	origin_id integer,
	origin_type varchar(10),		
	position integer NOT NULL DEFAULT 0,
	fk_product integer NOT NULL, 
	fk_warehouse integer,
	qty real NOT NULL DEFAULT 1,
	qty_frozen smallint DEFAULT 0,
    disable_stock_change smallint DEFAULT 0,
	batch varchar(128),
	role varchar(10),				
	fk_mrp_production integer,		
	fk_stock_movement integer,		
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	import_key varchar(14),
	fk_default_workstation integer DEFAULT NULL,
	fk_unit integer DEFAULT NULL
) ENGINE=innodb;

