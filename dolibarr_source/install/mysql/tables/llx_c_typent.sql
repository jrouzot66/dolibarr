



















create table llx_c_typent
(
  id         integer      PRIMARY KEY,
  code       varchar(12)  NOT NULL,
  libelle    varchar(128),
  fk_country integer NULL,		
  active     tinyint DEFAULT 1   NOT NULL,
  module     varchar(32) NULL,
  position   integer NOT NULL DEFAULT 0
)ENGINE=innodb;
