



















create table llx_c_tva
(
  rowid             integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  entity            integer DEFAULT 1 NOT NULL,
  fk_pays           integer NOT NULL,
  code              varchar(10) DEFAULT '',                         
  taux              double  NOT NULL,
  localtax1         varchar(20)  NOT NULL DEFAULT '0',
  localtax1_type	varchar(10)	 NOT NULL DEFAULT '0',
  localtax2         varchar(20)  NOT NULL DEFAULT '0',
  localtax2_type	varchar(10)  NOT NULL DEFAULT '0',
  use_default	    tinyint DEFAULT 0,								
  recuperableonly   integer NOT NULL DEFAULT 0,
  note              varchar(128),
  active            tinyint DEFAULT 1 NOT NULL,
  accountancy_code_sell	varchar(32) DEFAULT NULL,
  accountancy_code_buy	varchar(32) DEFAULT NULL
)ENGINE=innodb;

