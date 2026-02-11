


















create table llx_usergroup_user
(
  rowid         integer AUTO_INCREMENT PRIMARY KEY,
  entity        integer DEFAULT 1 NOT NULL,			
  fk_user       integer NOT NULL,
  fk_usergroup  integer NOT NULL

)ENGINE=innodb;
