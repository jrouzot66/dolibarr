


















create table llx_user
(
  rowid               integer AUTO_INCREMENT PRIMARY KEY,
  entity              integer     DEFAULT 1 NOT NULL,         

  ref_employee        varchar(50),
  ref_ext             varchar(50),                            

  admin               smallint DEFAULT 0,                     

  employee            tinyint     DEFAULT 1,                  
  fk_establishment    integer     DEFAULT 0,

  datec               datetime,                               
  tms                 timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_creat       integer,                                
  fk_user_modif       integer,                                
  login               varchar(50) NOT NULL,
  pass_encoding       varchar(24),
  pass                varchar(128),
  pass_crypted        varchar(128),
  pass_temp           varchar(128),			                    	
  api_key             varchar(128),			                      
  gender              varchar(10),
  civility            varchar(6),
  lastname            varchar(50),
  firstname           varchar(50),
  address             varchar(255),				                    
  zip                 varchar(25),				                    
  town                varchar(50),				                    
  fk_state            integer        DEFAULT 0,
  fk_country          integer        DEFAULT 0,
  birth               date,                                   
  birth_place         varchar(64),                            
  job                 varchar(128),
  office_phone        varchar(20),
  office_fax          varchar(20),
  user_mobile         varchar(20),
  personal_mobile     varchar(20),
  email               varchar(255),
  personal_email      varchar(255),
  email_oauth2        varchar(255),							  
  signature           text DEFAULT NULL,

  socialnetworks      text DEFAULT NULL,                      

  
  
  
  fk_soc                       integer NULL,                  
  fk_socpeople                 integer NULL,                  
  fk_member                    integer NULL,                  
  fk_user                      integer NULL,                  
  fk_user_expense_validator    integer NULL,
  fk_user_holiday_validator    integer NULL,
  
  idpers1			   varchar(128),
  idpers2			   varchar(128),
  idpers3			   varchar(128),
  
  note_public		      text,
  note_private            text          DEFAULT NULL,
  model_pdf               varchar(255)  DEFAULT NULL,
  last_main_doc           varchar(255),					            
  datelastlogin           datetime,
  datepreviouslogin       datetime,
  datelastpassvalidation  datetime,				                    
  datestartvalidity       datetime,
  dateendvalidity         datetime,
  flagdelsessionsbefore   datetime DEFAULT NULL,					
  iplastlogin             varchar(250),
  ippreviouslogin         varchar(250),
  egroupware_id           integer,
  ldap_sid                varchar(255)  DEFAULT NULL,
  openid                  varchar(255),
  statut                  tinyint       DEFAULT 1,
  photo                   varchar(255),				                
  lang                    varchar(6),					            
  color                   varchar(6),
  barcode                 varchar(255)  DEFAULT NULL,
  fk_barcode_type         integer       DEFAULT 0,
  accountancy_code        varchar(32) NULL,
  nb_holiday              integer       DEFAULT 0,
  thm                     double(24,8),
  tjm                     double(24,8),

  salary                  double(24,8),                       
  salaryextra             double(24,8),                       
  dateemployment          date,                               
  dateemploymentend       date,                               
  weeklyhours             double(16,8),                       

  import_key             varchar(14),                         
  default_range          integer,
  default_c_exp_tax_cat  integer,
  national_registration_number  varchar(50),
  fk_warehouse           integer                              
)ENGINE=innodb;
