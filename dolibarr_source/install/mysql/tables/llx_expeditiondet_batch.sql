


















CREATE TABLE llx_expeditiondet_batch (
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  fk_expeditiondet int NOT NULL,			
  eatby date DEFAULT NULL,
  sellby date DEFAULT NULL,
  batch varchar(128) DEFAULT NULL,			
  qty double NOT NULL DEFAULT '0',			
  fk_origin_stock integer NOT NULL,			
  fk_warehouse integer DEFAULT NULL			
) ENGINE=innodb;
