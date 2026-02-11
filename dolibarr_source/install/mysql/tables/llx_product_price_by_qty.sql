






















create table llx_product_price_by_qty
(
  rowid				integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fk_product_price	integer NOT NULL,
  price				double(24,8) DEFAULT 0,
  price_base_type	varchar(3) DEFAULT 'HT',
  quantity			double DEFAULT NULL,
  remise_percent	double NOT NULL DEFAULT 0,
  remise			double NOT NULL DEFAULT 0,
  unitprice			double(24,8) DEFAULT 0,
  fk_user_creat 	integer,
  fk_user_modif 	integer,

  fk_multicurrency		integer,
  multicurrency_code	varchar(3),
  multicurrency_tx			double(24,8) DEFAULT 1,
  multicurrency_price	double(24,8) DEFAULT NULL,
  multicurrency_price_ttc	double(24,8) DEFAULT NULL,
  
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  import_key    	varchar(14)
)ENGINE=innodb;
