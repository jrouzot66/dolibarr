

















CREATE TABLE llx_resource
(
  rowid           		  integer AUTO_INCREMENT PRIMARY KEY,
  entity          		  integer DEFAULT 1 NOT NULL,
  ref             		  varchar(255),
  asset_number          varchar(255),
  description     		  text,
  fk_code_type_resource varchar(32),
  address               varchar(255)    DEFAULT NULL,
  zip                   varchar(25)     DEFAULT NULL,
  town                  varchar(50)     DEFAULT NULL,
  photo_filename        varchar(255)    DEFAULT NULL,
  max_users             integer         DEFAULT NULL,
  phone                 varchar(20)     DEFAULT NULL,
  email                 varchar(255)    DEFAULT NULL,
  url                   varchar(255)    DEFAULT NULL,
  datec                 datetime DEFAULT NULL,
  date_valid            datetime DEFAULT NULL,
  fk_user_author        integer DEFAULT NULL,
  fk_user_modif         integer DEFAULT NULL,
  fk_user_valid         integer DEFAULT NULL,
  fk_statut             smallint NOT NULL DEFAULT '0',
  note_public     		  text,
  note_private    		  text,
  import_key			varchar(14),
  extraparams			varchar(255),					
  fk_country          integer DEFAULT NULL,          
  fk_state              integer DEFAULT NULL,
  tms         			  timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=innodb;
