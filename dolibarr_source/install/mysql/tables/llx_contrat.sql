



















create table llx_contrat
(
  rowid						integer AUTO_INCREMENT PRIMARY KEY,
  ref						varchar(255),		            
  ref_customer				varchar(255),		            
  ref_supplier				varchar(255),		            
  ref_ext					varchar(255),		            
  entity					integer DEFAULT 1 NOT NULL,		
  tms						timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec						datetime,                   	
  date_contrat				datetime,
  statut					smallint DEFAULT 0,				
  fin_validite				datetime,
  date_cloture				datetime,
  fk_soc					integer NOT NULL,
  fk_projet					integer,
  fk_commercial_signature	integer, 
  fk_commercial_suivi 		integer, 
  fk_user_author			integer NOT NULL default 0,
  fk_user_modif				integer,
  fk_user_cloture			integer,
  note_private				text,
  note_public				text,
  model_pdf					varchar(255),
  last_main_doc			    varchar(255),					
  import_key				varchar(14),
  extraparams				varchar(255)
)ENGINE=innodb;

