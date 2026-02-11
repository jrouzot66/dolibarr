



















create table llx_c_chargesociales
(
  id           integer AUTO_INCREMENT PRIMARY KEY,
  libelle      varchar(128),
  deductible   smallint DEFAULT 0 NOT NULL,
  active       tinyint DEFAULT 1  NOT NULL,
  code         varchar(12) NOT NULL,
  accountancy_code varchar(32) DEFAULT NULL,
  fk_pays      integer DEFAULT 1 NOT NULL,
  module       varchar(32) NULL
)ENGINE=innodb;



