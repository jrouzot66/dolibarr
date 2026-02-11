



























create table llx_adherent
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  ref              varchar(30) NOT NULL,        
  entity           integer DEFAULT 1 NOT NULL,  
  ref_ext          varchar(128),                

  gender           varchar(10),
  civility         varchar(6),
  lastname         varchar(50),
  firstname        varchar(50),
  login            varchar(50),                 
  pass             varchar(50),                 
  pass_crypted     varchar(128),
  fk_adherent_type integer NOT NULL,
  morphy           varchar(3) NOT NULL,         
  societe          varchar(128),			          
  fk_soc           integer NULL,		            
  address          text,
  zip              varchar(30),
  town             varchar(50),
  state_id         integer,
  country          integer,
  email            varchar(255),
  url              varchar(255) NULL,

  socialnetworks   text DEFAULT NULL,           

  phone            varchar(30),
  phone_perso      varchar(30),
  phone_mobile     varchar(30),
  birth            date,                          
  photo            varchar(255),                  
  statut           smallint NOT NULL DEFAULT 0,
  public           smallint NOT NULL DEFAULT 0,   
  datefin          datetime,                      
  default_lang     varchar(6) DEFAULT NULL,
  note_private     text DEFAULT NULL,
  note_public      text DEFAULT NULL,
  model_pdf		     varchar(255),
  datevalid        datetime,                      
  datec            datetime,                      
  tms              timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
  fk_user_author   integer,                       
  fk_user_mod      integer,
  fk_user_valid    integer,
  canvas           varchar(32),                   
  ip               varchar(250),                  
  import_key       varchar(14)                    
)ENGINE=innodb;
