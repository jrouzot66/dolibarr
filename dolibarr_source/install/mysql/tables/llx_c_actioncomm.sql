




















create table llx_c_actioncomm
(
  id         integer     PRIMARY KEY,
  code       varchar(50) NOT NULL,
  type       varchar(50) DEFAULT 'system' NOT NULL,
  libelle    varchar(128) NOT NULL,
  module	 varchar(50) DEFAULT NULL,
  active     tinyint DEFAULT 1 NOT NULL,
  todo       tinyint,						
  color      varchar(9),
  picto      varchar(48),
  position   integer NOT NULL DEFAULT 0
)ENGINE=innodb;
