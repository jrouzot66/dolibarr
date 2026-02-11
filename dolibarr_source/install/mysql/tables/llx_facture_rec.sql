




















create table llx_facture_rec
(
  rowid              integer AUTO_INCREMENT PRIMARY KEY,
  titre              varchar(200) NOT NULL,
  entity             integer DEFAULT 1 NOT NULL,	 
  subtype				     smallint DEFAULT NULL,					
  fk_soc             integer NOT NULL,
  datec              datetime,            
  tms				 timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,           

  suspended          integer DEFAULT 0,					
  
  amount             double(24,8)     DEFAULT 0 NOT NULL,
  remise             real     DEFAULT 0,
  remise_percent     real     DEFAULT 0,
  remise_absolue     real     DEFAULT 0,
  
  vat_src_code		 varchar(10)  DEFAULT '',			
  total_tva          double(24,8)     DEFAULT 0,
  localtax1			 double(24,8)     DEFAULT 0,           
  localtax2          double(24,8)     DEFAULT 0,           
  revenuestamp       double(24,8)     DEFAULT 0,			 
  total_ht           double(24,8)     DEFAULT 0,
  total_ttc          double(24,8)     DEFAULT 0,

  fk_user_author     integer,             
  fk_user_modif      integer,             
  
  fk_projet          integer,             
  
  fk_cond_reglement  integer  DEFAULT 1 NOT NULL,  
  fk_mode_reglement  integer DEFAULT 0,  
  date_lim_reglement date,				   
  fk_account         integer,			  
  note_private       text,
  note_public        text,
  modelpdf           varchar(255),

  fk_multicurrency          integer,
  multicurrency_code        varchar(3),
  multicurrency_tx          double(24,8) DEFAULT 1,
  multicurrency_total_ht    double(24,8) DEFAULT 0,
  multicurrency_total_tva   double(24,8) DEFAULT 0,
  multicurrency_total_ttc   double(24,8) DEFAULT 0,

  usenewprice        integer DEFAULT 0,			
  frequency          integer,						
  unit_frequency     varchar(2) DEFAULT 'm',		
  
  date_when          datetime DEFAULT NULL,		
  date_last_gen      datetime DEFAULT NULL,		
  nb_gen_done        integer DEFAULT NULL,		
  nb_gen_max         integer DEFAULT NULL,		    
  auto_validate      integer DEFAULT 0,		
  generate_pdf       integer DEFAULT 1      
)ENGINE=innodb;
