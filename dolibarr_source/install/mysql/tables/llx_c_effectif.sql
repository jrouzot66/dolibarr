



















create table llx_c_effectif
(
  id      integer     PRIMARY KEY,
  code    varchar(12) NOT NULL,
  libelle varchar(128),
  active  tinyint DEFAULT 1  NOT NULL,
  module  varchar(32) NULL
)ENGINE=innodb;

