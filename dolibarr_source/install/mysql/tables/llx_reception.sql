





















create table llx_reception
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  tms                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  ref                   varchar(30)        NOT NULL,
  entity                integer  DEFAULT 1 NOT NULL,	
  fk_soc                integer            NOT NULL,
  fk_projet             integer  DEFAULT NULL,
  
  ref_ext               varchar(30),					
  ref_supplier          varchar(255),					
  
  date_creation         datetime,						
  fk_user_author        integer,						
  fk_user_modif         integer,						
  date_valid            datetime,						
  fk_user_valid         integer,						
  date_delivery			datetime	DEFAULT NULL,		
  date_reception        datetime,
  fk_shipping_method    integer,
  tracking_number       varchar(50),
  fk_statut             smallint	DEFAULT 0,			
  billed                smallint    DEFAULT 0,
  
  height                float,							
  width                 float,							
  size_units            integer,						
  size                  float,							
  weight_units          integer,						
  weight                float,							
  note_private          text,
  note_public           text,
  model_pdf             varchar(255),
  fk_incoterms          integer,						
  location_incoterms    varchar(255),					
  
  import_key			varchar(14),
  extraparams			varchar(255)							
)ENGINE=innodb;
