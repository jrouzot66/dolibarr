
















CREATE TABLE llx_supplier_proposal (
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  ref varchar(30) NOT NULL,
  entity integer NOT NULL DEFAULT 1,
  ref_ext varchar(255) DEFAULT NULL,
  fk_soc integer DEFAULT NULL,
  fk_projet integer DEFAULT NULL,
  tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec datetime DEFAULT NULL,
  date_valid datetime DEFAULT NULL,
  date_cloture datetime DEFAULT NULL,
  fk_user_author integer DEFAULT NULL,
  fk_user_modif integer DEFAULT NULL,
  fk_user_valid integer DEFAULT NULL,
  fk_user_cloture integer DEFAULT NULL,
  fk_statut	smallint DEFAULT 0 NOT NULL,	
  price double DEFAULT 0,
  remise_percent double DEFAULT 0,
  remise_absolue double DEFAULT 0,
  remise double DEFAULT 0,
  total_ht double(24,8) DEFAULT 0,
  total_tva double(24,8) DEFAULT 0,
  localtax1 double(24,8) DEFAULT 0,
  localtax2 double(24,8) DEFAULT 0,
  total_ttc double(24,8) DEFAULT 0,
  fk_account integer DEFAULT NULL,
  fk_currency varchar(3) DEFAULT NULL,
  fk_cond_reglement integer DEFAULT NULL,
  fk_mode_reglement integer DEFAULT NULL,
  note_private text,
  note_public text,
  model_pdf 			varchar(255) DEFAULT NULL,
  last_main_doc			varchar(255),					

  date_livraison date DEFAULT NULL,
  fk_shipping_method integer DEFAULT NULL,
  import_key varchar(14) DEFAULT NULL,
  extraparams varchar(255) DEFAULT NULL,
  
  fk_multicurrency        integer,
  multicurrency_code      varchar(3),
  multicurrency_tx        double(24,8) DEFAULT 1,
  multicurrency_total_ht  double(24,8) DEFAULT 0,
  multicurrency_total_tva double(24,8) DEFAULT 0,
  multicurrency_total_ttc double(24,8) DEFAULT 0
) ENGINE=innodb;
