
















create table llx_facture_fourn_det_rec
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  fk_facture_fourn		integer NOT NULL,
  fk_parent_line	integer NULL,
  fk_product		integer NULL,
  ref               varchar(50),   
  label				varchar(255) DEFAULT NULL,
  description		text,
  pu_ht             double(24,8), 
  pu_ttc            double(24,8), 
  qty               real,         
  remise_percent	real       DEFAULT 0,				
  fk_remise_except	integer    NULL,					
  vat_src_code					varchar(10)  DEFAULT '',			
  tva_tx			double(7,4),	             	
  localtax1_tx      double(7,4) DEFAULT 0,    		
  localtax1_type	varchar(10) NULL, 				
  localtax2_tx      double(7,4) DEFAULT 0,    		
  localtax2_type	varchar(10)	 NULL, 				
  total_ht			double(24,8),					
  total_tva			double(24,8),					
  total_localtax1	double(24,8) DEFAULT 0,		
  total_localtax2	double(24,8) DEFAULT 0,		
  total_ttc			double(24,8),					
  product_type		integer DEFAULT 0,
  date_start        integer DEFAULT NULL,       
  date_end          integer DEFAULT NULL,       
  info_bits			integer DEFAULT 0,				
  special_code		integer UNSIGNED DEFAULT 0,		
  rang				integer DEFAULT 0,				
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
