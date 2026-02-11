


















create table llx_user_rights
(
  rowid			integer AUTO_INCREMENT PRIMARY KEY,
  entity		integer DEFAULT 1 NOT NULL, 
  fk_user		integer NOT NULL,
  fk_id			integer NOT NULL
)ENGINE=innodb;

