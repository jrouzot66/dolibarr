

















create table llx_c_revenuestamp
(
  rowid             integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fk_pays           integer NOT NULL,
  taux              double  NOT NULL,
  revenuestamp_type varchar(16) DEFAULT 'fixed' NOT NULL,
  note              varchar(128),
  active            tinyint DEFAULT 1 NOT NULL,
  accountancy_code_sell	varchar(32) DEFAULT NULL,
  accountancy_code_buy	varchar(32) DEFAULT NULL
)ENGINE=innodb;

