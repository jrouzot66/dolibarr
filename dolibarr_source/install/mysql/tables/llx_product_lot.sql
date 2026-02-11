


















CREATE TABLE llx_product_lot (
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  entity          integer DEFAULT 1,
  fk_product      integer NOT NULL,				
  batch           varchar(128) DEFAULT NULL,	
  note_public     text DEFAULT NULL,
  note_private    text DEFAULT NULL,
  eatby           date DEFAULT NULL,			
  sellby          date DEFAULT NULL, 			
  eol_date      datetime NULL,
  manufacturing_date datetime NULL,                
  scrapping_date datetime NULL,                    
  qc_frequency   integer DEFAULT NULL,
  lifetime       integer DEFAULT NULL,
  barcode       varchar(180) DEFAULT NULL,         
  fk_barcode_type   integer DEFAULT NULL,          
  model_pdf			varchar(255),
  last_main_doc		varchar(255),				
  datec         datetime,
  tms           timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_creat integer,
  fk_user_modif integer,
  import_key    integer
) ENGINE=innodb;
