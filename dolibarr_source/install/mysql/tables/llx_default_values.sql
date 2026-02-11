

















create table llx_default_values
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  entity          integer DEFAULT 1 NOT NULL,		
  type			  varchar(10),                      
  user_id         integer DEFAULT 0 NOT NULL,       
  page            varchar(255),                     
  param           varchar(255),                     
  value		      varchar(128)                      
)ENGINE=innodb;


