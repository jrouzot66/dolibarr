


















create table llx_bank
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  datec           datetime,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datev           date,                      
  dateo           date,                      
  amount          double(24,8) NOT NULL default 0,		
  amount_main_currency double(24,8) NULL,				
  label           varchar(255),
  fk_account      integer,
  fk_user_author  integer,
  fk_user_rappro  integer,
  fk_type         varchar(6),                
  num_releve      varchar(50),
  num_chq         varchar(50),
  numero_compte   varchar(32) NULL,		       
  rappro          tinyint default 0,
  note            text,
  fk_bordereau    integer DEFAULT 0,
  position        integer DEFAULT 0,
  banque          varchar(255),              
  emetteur        varchar(255),              
  author          varchar(40),               
  origin_id       integer,
  origin_type     varchar(64) NULL,
  import_key	  varchar(14)
)ENGINE=innodb;
