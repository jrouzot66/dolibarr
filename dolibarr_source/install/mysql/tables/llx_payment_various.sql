

















create table llx_payment_various
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  ref                   varchar(30) NULL,           
  num_payment           varchar(50),				
  label                 varchar(255),
  tms                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec                 datetime,                   
  datep                 date,                       
  datev                 date,                       
  sens                  smallint DEFAULT 0 NOT NULL,
  amount                double(24,8) DEFAULT 0 NOT NULL,
  fk_typepayment        integer NOT NULL,
  accountancy_code      varchar(32),
  subledger_account     varchar(32),
  fk_projet             integer DEFAULT NULL,
  entity                integer DEFAULT 1 NOT NULL,	
  note                  text,
  fk_bank               integer,
  fk_user_author        integer,                    
  fk_user_modif         integer                     
)ENGINE=innodb;
