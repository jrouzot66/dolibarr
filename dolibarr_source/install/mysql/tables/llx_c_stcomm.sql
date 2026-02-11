



















create table llx_c_stcomm
(
  id       integer      PRIMARY KEY,
  code     varchar(24)  NOT NULL,
  libelle  varchar(128),
  picto    varchar(128),
  sortorder smallint DEFAULT 0,
  active   tinyint default 1  NOT NULL
)ENGINE=innodb;

