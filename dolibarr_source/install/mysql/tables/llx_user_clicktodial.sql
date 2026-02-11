




















create table llx_user_clicktodial
(
  fk_user       integer PRIMARY KEY,
  url           varchar(255),
  login         varchar(32),
  pass          varchar(64),
  poste         varchar(20)
)ENGINE=innodb;