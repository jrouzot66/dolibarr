




















create table llx_product_fournisseur_price
(
  rowid					integer AUTO_INCREMENT PRIMARY KEY,
  entity				integer DEFAULT 1 NOT NULL,	   
  datec					datetime,
  tms					timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_product			integer,
  fk_soc				integer,
  ref_fourn				varchar(128),
  desc_fourn            text,
  fk_availability		integer,	   
  price					double(24,8) DEFAULT 0,		
  quantity				double,
  remise_percent		double NOT NULL DEFAULT 0,
  remise				double NOT NULL DEFAULT 0,
  unitprice				double(24,8) DEFAULT 0,		
  charges				double(24,8) DEFAULT 0,		
  default_vat_code	    varchar(10),
  barcode                       varchar(180) DEFAULT NULL,          
  fk_barcode_type               integer      DEFAULT NULL,          
  tva_tx				double(7,4) NOT NULL,
  localtax1_tx		    double(7,4) DEFAULT 0,
  localtax1_type        varchar(10)  NOT NULL DEFAULT '0',
  localtax2_tx		    double(7,4) DEFAULT 0,
  localtax2_type        varchar(10)  NOT NULL DEFAULT '0',
  info_bits				integer NOT NULL DEFAULT 0,
  fk_user				integer,
  fk_supplier_price_expression	integer,            
  delivery_time_days    integer,
  supplier_reputation varchar(10),
  packaging			    real DEFAULT NULL,
  fk_multicurrency		integer,
  multicurrency_code	varchar(3),
  multicurrency_tx			double(24,8) DEFAULT 1,
  multicurrency_unitprice   double(24,8) DEFAULT NULL,		
  multicurrency_price		double(24,8) DEFAULT NULL,
  import_key			varchar(14),                
  status                integer DEFAULT 1
)ENGINE=innodb;
