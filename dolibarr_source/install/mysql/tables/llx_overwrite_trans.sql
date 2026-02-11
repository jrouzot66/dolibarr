

















create table llx_overwrite_trans
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  entity          integer DEFAULT 1 NOT NULL,		
  lang            varchar(5),	
  transkey	      varchar(128),
  transvalue      text
)ENGINE=innodb;


