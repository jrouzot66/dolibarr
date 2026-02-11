


















create table llx_usergroup_rights
(
  rowid			integer AUTO_INCREMENT PRIMARY KEY,
  entity		integer DEFAULT 1 NOT NULL, 
  fk_usergroup	integer NOT NULL,
  fk_id			integer NOT NULL

)ENGINE=innodb;

