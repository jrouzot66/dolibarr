






















create table llx_product_price
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  entity			integer   DEFAULT 1 NOT NULL,		
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_product		integer NOT NULL,
  date_price		datetime NOT NULL,
  price_level		smallint NULL DEFAULT 1,
  price				double(24,8) DEFAULT NULL,		
  price_ttc			double(24,8) DEFAULT NULL,		
  price_min			double(24,8) default NULL,
  price_min_ttc		double(24,8) default NULL,
  price_base_type	varchar(3) DEFAULT 'HT',
  default_vat_code	varchar(10),	         		
  tva_tx			double(7,4) DEFAULT 0 NOT NULL, 
  recuperableonly	integer NOT NULL DEFAULT '0',  
  localtax1_tx		double(7,4) DEFAULT 0,
  localtax1_type    varchar(10)  NOT NULL DEFAULT '0',
  localtax2_tx		double(7,4) DEFAULT 0,
  localtax2_type    varchar(10)  NOT NULL DEFAULT '0',
  fk_user_author	integer,
  tosell			tinyint DEFAULT 1,
  price_by_qty		integer NOT NULL DEFAULT 0,
  fk_price_expression integer,                     
  import_key 		varchar(14),
  
  fk_multicurrency		integer,
  multicurrency_code	varchar(3),
  multicurrency_tx			double(24,8) DEFAULT 1,
  multicurrency_price	double(24,8) DEFAULT NULL,
  multicurrency_price_ttc	double(24,8) DEFAULT NULL
  
)ENGINE=innodb;

