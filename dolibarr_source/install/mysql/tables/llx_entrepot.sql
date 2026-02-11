



















create table llx_entrepot
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  ref             varchar(255) NOT NULL,
  datec           datetime,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  entity          integer DEFAULT 1 NOT NULL,	
  fk_project	  integer DEFAULT NULL,			
  description     text,
  lieu            varchar(64),					
  address         varchar(255),
  zip             varchar(10),
  town            varchar(50),
  fk_departement  integer,
  fk_pays         integer DEFAULT 0,
  phone           varchar(20),                  
  fax             varchar(20),                  
  barcode         varchar(180) DEFAULT NULL,          
  fk_barcode_type integer      DEFAULT NULL,          
  warehouse_usage integer DEFAULT 1,            
  statut          tinyint DEFAULT 1,			
  fk_user_author  integer,
  model_pdf       varchar(255),
  import_key	  varchar(14),
  fk_parent       integer DEFAULT 0
)ENGINE=innodb;
