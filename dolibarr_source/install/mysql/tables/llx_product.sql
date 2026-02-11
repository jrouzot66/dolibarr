























create table llx_product
(
  rowid                         integer AUTO_INCREMENT PRIMARY KEY,
  ref                           varchar(128)  NOT NULL,
  entity                        integer   DEFAULT 1 NOT NULL,       

  ref_ext                       varchar(128),                       

  datec                         datetime,
  tms                           timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_parent                     integer	  DEFAULT 0,                

  label                         varchar(255) NOT NULL,
  description                   text,
  note_public                   text,
  note                          text,
  customcode                    varchar(32),                        
  fk_country                    integer DEFAULT NULL,               
  fk_state                      integer DEFAULT NULL,               
  price                         double(24,8) DEFAULT 0,				
  price_ttc                     double(24,8) DEFAULT 0,				
  price_min                     double(24,8) DEFAULT 0,
  price_min_ttc                 double(24,8) DEFAULT 0,
  price_base_type               varchar(3)   DEFAULT 'HT',
  cost_price                    double(24,8) DEFAULT NULL,          
  default_vat_code              varchar(10),                        
  tva_tx                        double(7,4),                        
  recuperableonly               integer NOT NULL DEFAULT '0',       
  localtax1_tx                  double(7,4)  DEFAULT 0,
  localtax1_type                varchar(10)  NOT NULL DEFAULT '0',
  localtax2_tx                  double(7,4)  DEFAULT 0,
  localtax2_type                varchar(10)  NOT NULL DEFAULT '0',
  fk_user_author                integer DEFAULT NULL,               
  fk_user_modif                 integer,                            
  tosell                        tinyint      DEFAULT 1,             
  tobuy                         tinyint      DEFAULT 1,             
  onportal                      tinyint      DEFAULT 0,	            
  tobatch                       tinyint      DEFAULT 0 NOT NULL,    
  sell_or_eat_by_mandatory      tinyint      DEFAULT 0 NOT NULL,    
  batch_mask			        varchar(32)  DEFAULT NULL,          
  fk_product_type               integer      DEFAULT 0,             
  duration                      varchar(6),
  seuil_stock_alerte            float      DEFAULT NULL,
  url                           varchar(255),
  barcode                       varchar(180) DEFAULT NULL,          
  fk_barcode_type               integer      DEFAULT NULL,          
  accountancy_code_sell         varchar(32),                        
  accountancy_code_sell_intra   varchar(32),                        
  accountancy_code_sell_export  varchar(32),                        
  accountancy_code_buy          varchar(32),                        
  accountancy_code_buy_intra    varchar(32),                        
  accountancy_code_buy_export   varchar(32),                        
  partnumber                    varchar(32),                        
  net_measure                   float        DEFAULT NULL,
  net_measure_units             tinyint      DEFAULT NULL,
  weight                        float        DEFAULT NULL,
  weight_units                  tinyint      DEFAULT NULL,
  length                        float        DEFAULT NULL,
  length_units                  tinyint      DEFAULT NULL,
  width                         float        DEFAULT NULL,
  width_units                   tinyint      DEFAULT NULL,
  height                        float        DEFAULT NULL,
  height_units                  tinyint      DEFAULT NULL,
  surface                       float        DEFAULT NULL,
  surface_units                 tinyint      DEFAULT NULL,
  volume                        float        DEFAULT NULL,
  volume_units                  tinyint      DEFAULT NULL,
  stockable_product             integer      DEFAULT 1 NOT NULL,
  stock                         real,                               
  pmp                           double(24,8) DEFAULT 0 NOT NULL,    
  fifo                          double(24,8),                       
  lifo                          double(24,8),                       
  fk_default_warehouse          integer      DEFAULT NULL,
  canvas                        varchar(32)  DEFAULT NULL,
  finished                      tinyint      DEFAULT NULL,          
  lifetime                      integer      DEFAULT NULL,
  qc_frequency 					integer 	 DEFAULT NULL,			
  hidden                        tinyint      DEFAULT 0,             
  import_key                    varchar(14),                        
  model_pdf                     varchar(255),                       
  fk_price_expression           integer,                            
  desiredstock                  float        DEFAULT 0,
  fk_unit                       integer      DEFAULT NULL,
  price_autogen                 tinyint      DEFAULT 0,
  fk_project                    integer      DEFAULT NULL,           
  mandatory_period              tinyint      DEFAULT 0,              

  fk_default_bom                integer      DEFAULT NULL,
  fk_default_workstation        integer      DEFAULT NULL
)ENGINE=innodb;
