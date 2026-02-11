


















create table llx_accounting_journal
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  entity            integer DEFAULT 1 NOT NULL,
  code              varchar(32) NOT NULL,
  label             varchar(128) NOT NULL,
  nature            smallint DEFAULT 1 NOT NULL,        
  active            smallint DEFAULT 0
)ENGINE=innodb;
