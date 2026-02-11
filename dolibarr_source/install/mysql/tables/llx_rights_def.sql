


















create table llx_rights_def
(
  id            integer NOT NULL,
  libelle       varchar(255),
  module        varchar(64),
  module_position integer NOT NULL DEFAULT 0,
  family_position integer NOT NULL DEFAULT 0,
  entity        integer DEFAULT 1 NOT NULL,
  perms         varchar(50),
  subperms      varchar(50),
  type          varchar(1),
  bydefault     tinyint DEFAULT 0
)ENGINE=innodb;








