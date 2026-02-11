















CREATE TABLE llx_stocktransfer_stocktransferline(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	amount double DEFAULT NULL, 
	qty real,
    fk_warehouse_source integer NOT NULL,
    fk_warehouse_destination integer NOT NULL,
	fk_stocktransfer integer NOT NULL, 
	fk_product integer NOT NULL,
    batch varchar(128) DEFAULT NULL,	
    pmp double,
    rang integer DEFAULT 0,
    fk_parent_line integer NULL
	
) ENGINE=innodb;
