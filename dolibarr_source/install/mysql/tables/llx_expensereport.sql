

















CREATE TABLE llx_expensereport (
  rowid integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ref        		varchar(50) NOT NULL,
  entity 			integer DEFAULT 1 NOT NULL,		
  ref_number_int 	integer DEFAULT NULL,
  ref_ext 			integer,
  total_ht 			double(24,8) DEFAULT 0,
  total_tva 		double(24,8) DEFAULT 0,
  localtax1			double(24,8) DEFAULT 0,			
  localtax2			double(24,8) DEFAULT 0,			
  total_ttc 		double(24,8) DEFAULT 0,
  date_debut 		date NOT NULL,
  date_fin 			date NOT NULL,
  date_create 		datetime NOT NULL,
  date_valid 		datetime,
  date_approve		datetime,
  date_refuse 		datetime,
  date_cancel 		datetime,
  tms 		 		timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_author 	integer NOT NULL,				
  fk_user_creat 	integer DEFAULT NULL,			
  fk_user_modif 	integer DEFAULT NULL,
  fk_user_valid 	integer DEFAULT NULL,
  fk_user_validator integer DEFAULT NULL,
  fk_user_approve   integer DEFAULT NULL,
  fk_user_refuse 	integer DEFAULT NULL,
  fk_user_cancel 	integer DEFAULT NULL,
  fk_statut			integer NOT NULL,				
  fk_c_paiement 	integer DEFAULT NULL,			
  paid              smallint default 0 NOT NULL,	
  note_public		text,
  note_private 		text,
  detail_refuse 	varchar(255) DEFAULT NULL,
  detail_cancel 	varchar(255) DEFAULT NULL,
  integration_compta integer DEFAULT NULL,			
  fk_bank_account 	integer DEFAULT NULL,
  model_pdf 		varchar(50) DEFAULT NULL,
  last_main_doc		varchar(255),					
  
  fk_multicurrency        integer,
  multicurrency_code      varchar(3),
  multicurrency_tx        double(24,8) DEFAULT 1,
  multicurrency_total_ht  double(24,8) DEFAULT 0,
  multicurrency_total_tva double(24,8) DEFAULT 0,
  multicurrency_total_ttc double(24,8) DEFAULT 0,

  import_key			varchar(14),
  extraparams			varchar(255)				
) ENGINE=innodb;

