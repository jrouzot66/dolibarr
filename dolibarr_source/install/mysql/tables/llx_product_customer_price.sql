





















create table llx_product_customer_price
(
  rowid					integer AUTO_INCREMENT PRIMARY KEY,
  entity				integer DEFAULT 1 NOT NULL,	   
  datec					datetime,
  tms					timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_product			integer NOT NULL,
  fk_soc				integer NOT NULL,
  ref_customer			varchar(128),
  price						double(24,8) DEFAULT 0,
  price_ttc					double(24,8) DEFAULT 0,
  price_min					double(24,8) DEFAULT 0,
  price_min_ttc				double(24,8) DEFAULT 0,
  price_base_type			varchar(3)   DEFAULT 'HT',
  default_vat_code			varchar(10),	         		
  tva_tx					double(7,4),
  recuperableonly           integer NOT NULL DEFAULT '0',   
  localtax1_tx				double(7,4)  DEFAULT 0,         
  localtax1_type            varchar(10)  NOT NULL DEFAULT '0',
  localtax2_tx				double(7,4)  DEFAULT 0,         
  localtax2_type            varchar(10)  NOT NULL DEFAULT '0',
  fk_user				integer,
  import_key			varchar(14)                  
)ENGINE=innodb;
