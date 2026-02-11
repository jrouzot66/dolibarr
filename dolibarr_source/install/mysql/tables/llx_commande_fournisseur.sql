




















create table llx_commande_fournisseur
(
  rowid						integer AUTO_INCREMENT PRIMARY KEY,

  ref						varchar(180) NOT NULL,         
  entity					integer DEFAULT 1 NOT NULL,    

  ref_ext					varchar(255),                   
  ref_supplier				varchar(255),

  fk_soc					integer NOT NULL,
  fk_projet					integer DEFAULT 0,             

  tms						timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  date_creation				datetime,                      
  date_valid				datetime,                      
  date_approve				datetime,                      
  date_approve2				datetime,                      
  date_commande				date,                          
  fk_user_author			integer,                       
  fk_user_modif				integer,                       
  fk_user_valid				integer,                       
  fk_user_approve			integer,                       
  fk_user_approve2			integer,                       
  source					smallint NOT NULL,             
  fk_statut					smallint  default 0,
  billed					smallint  default 0,
  amount_ht					double(24,8)      default 0,
  remise_percent			real      default 0,
  remise					real      default 0,
  total_tva						double(24,8)      default 0,
  localtax1					double(24,8)      default 0,
  localtax2					double(24,8)      default 0,
  total_ht					double(24,8)      default 0,
  total_ttc					double(24,8)      default 0,
  note_private				text,
  note_public				text,
  model_pdf					varchar(255),
  last_main_doc				varchar(255),					

  date_livraison			datetime default NULL,
  fk_account				integer,                       
  fk_cond_reglement			integer,                       
  fk_mode_reglement			integer,                       
  fk_input_method			integer default 0,            
  fk_incoterms				integer,						
  location_incoterms		varchar(255),					
  import_key				varchar(14),
  extraparams				varchar(255),					

  fk_multicurrency			integer,
  multicurrency_code		varchar(3),
  multicurrency_tx			double(24,8) DEFAULT 1,
  multicurrency_total_ht	double(24,8) DEFAULT 0,
  multicurrency_total_tva	double(24,8) DEFAULT 0,
  multicurrency_total_ttc	double(24,8) DEFAULT 0
)ENGINE=innodb;
