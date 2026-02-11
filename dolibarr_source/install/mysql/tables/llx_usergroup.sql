



















create table llx_usergroup
(
  rowid         integer AUTO_INCREMENT PRIMARY KEY,
  nom           varchar(180) NOT NULL,
  entity        integer DEFAULT 1 NOT NULL,	
  datec         datetime,
  tms           timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  note          text,
  model_pdf     varchar(255) DEFAULT NULL
)ENGINE=innodb;









