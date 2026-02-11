




















create table llx_commande
(
  rowid						integer AUTO_INCREMENT PRIMARY KEY,
  ref						varchar(30)       NOT NULL,		
  entity					integer DEFAULT 1 NOT NULL,		

  ref_ext					varchar(255),					
  ref_client				varchar(255),					

  fk_soc					integer NOT NULL,
  fk_projet					integer DEFAULT NULL,			

  tms						timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  date_creation				datetime,						
  date_valid				datetime,						
  date_cloture				datetime,						
  date_commande				date,							
  fk_user_author			integer,						
  fk_user_modif				integer,						
  fk_user_valid				integer,						
  fk_user_cloture			integer,						
  source					smallint,						
  fk_statut					smallint  default 0,
  amount_ht					double(24,8) default 0,
  remise_percent			real      default 0,
  remise_absolue			real      default 0,
  remise					real      default 0,
  
  total_tva                 double(24,8)     default 0,
  localtax1					double(24,8)     default 0,		
  localtax2					double(24,8)     default 0,		
  revenuestamp              double(24,8)     DEFAULT 0,		
  total_ht					double(24,8)     default 0,
  total_ttc					double(24,8)     default 0,

  note_private				text,
  note_public				text,
  model_pdf					varchar(255),
  last_main_doc				varchar(255),					

  module_source			varchar(32),							
  pos_source			varchar(32),							
  facture					tinyint   default 0,
  fk_account				integer,						
  fk_currency				varchar(3),						
  fk_cond_reglement			integer,						
  deposit_percent			varchar(63) DEFAULT NULL,		
  fk_mode_reglement			integer,						

  date_livraison			datetime 	  default NULL,
  fk_shipping_method		integer,						
  fk_warehouse				integer default NULL,
  fk_availability			integer NULL,
  fk_input_reason			integer,						
  fk_delivery_address		integer,						
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
