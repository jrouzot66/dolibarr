


















create table llx_contratdet
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  tms                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  fk_contrat            integer       NOT NULL,
  fk_product            integer       NULL,                

  statut                smallint      DEFAULT 0,

  label                 text,                              
  description           text,
  fk_remise_except		integer       NULL,                

  date_commande         datetime,
  date_ouverture_prevue datetime,
  date_ouverture        datetime,                          
  date_fin_validite     datetime,
  date_cloture          datetime,

  vat_src_code			varchar(10)   DEFAULT '',		   
  tva_tx                double(7,4)   DEFAULT 0, 	       
  localtax1_tx		    double(7,4)   DEFAULT 0,           
  localtax1_type		varchar(10)	  	 NULL, 		       
  localtax2_tx		    double(7,4)   DEFAULT 0,           
  localtax2_type		varchar(10)	  	 NULL, 			   
  qty                   real          NOT NULL,            
  remise_percent        real          DEFAULT 0,    	   
  subprice              double(24,8)  DEFAULT 0,           
  price_ht              real,              		           
  remise                real          DEFAULT 0,    		             
  total_ht              double(24,8)  DEFAULT 0,     		   
  total_tva             double(24,8)  DEFAULT 0,	   		   
  total_localtax1       double(24,8)  DEFAULT 0,	   		   
  total_localtax2       double(24,8)  DEFAULT 0,	   		   
  total_ttc             double(24,8)  DEFAULT 0,	   		   
  product_type			integer       DEFAULT 1,               
  info_bits		        integer DEFAULT 0, 		               

  rang					integer DEFAULT 0,
  buy_price_ht          double(24,8)  DEFAULT NULL,            
  fk_product_fournisseur_price integer DEFAULT NULL,           

  fk_user_author        integer       NOT NULL DEFAULT 0,
  fk_user_ouverture     integer,
  fk_user_cloture       integer,
  commentaire           text,
  fk_unit               integer       DEFAULT NULL,

  fk_multicurrency		integer,
  multicurrency_code			varchar(3),
  multicurrency_subprice		double(24,8) DEFAULT 0,
  multicurrency_total_ht		double(24,8) DEFAULT 0,
  multicurrency_total_tva	double(24,8) DEFAULT 0,
  multicurrency_total_ttc	double(24,8) DEFAULT 0  
)ENGINE=innodb;
