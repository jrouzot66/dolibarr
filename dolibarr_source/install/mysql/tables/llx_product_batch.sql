



















CREATE TABLE llx_product_batch (
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_product_stock integer NOT NULL,
  eatby datetime DEFAULT NULL,			
  sellby datetime DEFAULT NULL,			
  batch varchar(128) NOT NULL,
  qty double NOT NULL DEFAULT 0,
  import_key varchar(14) DEFAULT NULL
) ENGINE=innodb;

