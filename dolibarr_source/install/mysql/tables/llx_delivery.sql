


















create table llx_delivery
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  tms                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  ref                   varchar(30)  NOT NULL,			
  entity                integer DEFAULT 1 NOT NULL,		
  fk_soc                integer      NOT NULL,
  
  ref_ext               varchar(255),					
  ref_customer          varchar(255),					
  
  date_creation         datetime,						
  fk_user_author        integer,						
  date_valid            datetime,						
  fk_user_valid         integer,						
  date_delivery 	    datetime		DEFAULT NULL,	
  fk_address  			integer,						
  fk_statut             smallint     DEFAULT 0,
  total_ht              double(24,8) DEFAULT 0,
  note_private          text,
  note_public           text,
  model_pdf             varchar(255),
  last_main_doc			varchar(255),					
  fk_incoterms          integer,						
  location_incoterms    varchar(255),					

  import_key        varchar(14),
  extraparams		varchar(255)						
)ENGINE=innodb;
