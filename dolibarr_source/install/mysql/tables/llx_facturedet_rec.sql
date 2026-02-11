





















create table llx_facturedet_rec
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  fk_facture		integer NOT NULL,
  fk_parent_line	integer NULL,
  fk_product		integer NULL,
  product_type		integer DEFAULT 0,
  label				varchar(255) DEFAULT NULL,
  description		text,
  vat_src_code					varchar(10)  DEFAULT '',			
  tva_tx			double(7,4),	             	
  localtax1_tx      double(7,4) DEFAULT 0,    		
  localtax1_type	varchar(10) NULL, 				
  localtax2_tx      double(7,4) DEFAULT 0,    		
  localtax2_type	varchar(10)	 NULL, 				
  qty				real,							
  remise_percent	real DEFAULT 0,				
  remise			real DEFAULT 0,				
  subprice			double(24,8),					
  price				double(24,8),					
  total_ht			double(24,8),					
  total_tva			double(24,8),					
  total_localtax1	double(24,8) DEFAULT 0,		
  total_localtax2	double(24,8) DEFAULT 0,		
  total_ttc			double(24,8),					
  date_start_fill	integer DEFAULT 0,				
  date_end_fill		integer DEFAULT 0,				
  info_bits			integer DEFAULT 0,				

  buy_price_ht					double(24,8) DEFAULT 0,				
  fk_product_fournisseur_price	integer      DEFAULT NULL,			
  
  special_code		integer UNSIGNED DEFAULT 0,		
  rang				integer DEFAULT 0,				
  fk_contract_line  integer NULL,					
  fk_unit           integer    DEFAULT NULL,
  import_key		varchar(14),
 
  fk_user_author	integer,                						
  fk_user_modif     integer,                						
    
  fk_multicurrency          integer,
  multicurrency_code        varchar(3),
  multicurrency_subprice    double(24,8) DEFAULT 0,
  multicurrency_total_ht    double(24,8) DEFAULT 0,
  multicurrency_total_tva   double(24,8) DEFAULT 0,
  multicurrency_total_ttc   double(24,8) DEFAULT 0
)ENGINE=innodb;
