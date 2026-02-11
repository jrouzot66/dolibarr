


















create table llx_fichinter
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  fk_soc			integer NOT NULL,
  fk_projet			integer DEFAULT 0,          
  fk_contrat		integer DEFAULT 0,          
  ref				varchar(30) NOT NULL,       
  ref_ext			varchar(255),
  ref_client		varchar(255),				
  entity			integer DEFAULT 1 NOT NULL, 
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec				datetime,                   
  date_valid		datetime,                   
  datei				date,						
  fk_user_author	integer,					
  fk_user_modif     integer,                    
  fk_user_valid		integer,                    
  fk_statut			smallint  DEFAULT 0,
  dateo				date,						
  datee				date,						
  datet				date,						
  duree				real,                       
  description		text,
  note_private		text,
  note_public		text,
  model_pdf			varchar(255),
  last_main_doc		varchar(255),				
  import_key        varchar(14),
  extraparams		varchar(255)				
)ENGINE=innodb;
