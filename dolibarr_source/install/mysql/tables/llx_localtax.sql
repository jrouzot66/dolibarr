


















create table llx_localtax
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  entity          integer DEFAULT 1 NOT NULL,
  localtaxtype    tinyint,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datep           date,								
  datev           date,								
  amount          double,
  label           varchar(255),	
  note            text,
  fk_bank         integer,  
  fk_user_creat   integer,                 
  fk_user_modif   integer 
)ENGINE=innodb;
