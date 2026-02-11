



















create table llx_user_param
(
  fk_user       integer      NOT NULL,
  entity        integer DEFAULT 1 NOT NULL,	
  param         varchar(180)  NOT NULL,
  value         text NOT NULL
)ENGINE=innodb;








