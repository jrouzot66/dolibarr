






















create table llx_societe_rib
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  type           varchar(32) DEFAULT 'ban' NOT NULL,							
  label          varchar(200),
  fk_soc         integer NOT NULL,
  datec          datetime,
  tms            timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  
  bank           varchar(255),  
  code_banque    varchar(128),  
  code_guichet   varchar(6),    
  number         varchar(255),  
  cle_rib        varchar(5),    

  bic               varchar(20),    
  bic_intermediate  varchar(11),    
  iban_prefix       varchar(34),    

  domiciliation  varchar(255),
  proprio        varchar(60),
  owner_address  varchar(255),
  default_rib    smallint NOT NULL DEFAULT 0,
  state_id       integer,
  fk_country     integer,
  currency_code  varchar(3),

  model_pdf		 varchar(255),					
  last_main_doc	 varchar(255),					

  
  rum           varchar(32),	 				
  date_rum      date,							
  frstrecur     varchar(16) default 'FRST',     

  
  last_four         varchar(4),					
  card_type         varchar(255),				
  cvn               varchar(255),
  exp_date_month    integer,
  exp_date_year     integer,
  country_code      varchar(10),

  
  approved                          integer DEFAULT 0,
  email                             varchar(255),
  ending_date                       date,
  max_total_amount_of_all_payments  double(24,8),
  preapproval_key                   varchar(255),
  starting_date                     date,
  total_amount_of_all_payments      double(24,8),

  
  stripe_card_ref   varchar(128),               
  stripe_account    varchar(128),				

  ext_payment_site  varchar(128),               

  extraparams       varchar(255),               
  
  
  date_signature    datetime,
  online_sign_ip    varchar(48),
  online_sign_name  varchar(64),
  
  comment           varchar(255),
  ipaddress         varchar(68),
  status            integer NOT NULL DEFAULT 1, 
  import_key        varchar(14)                 
)ENGINE=innodb;
