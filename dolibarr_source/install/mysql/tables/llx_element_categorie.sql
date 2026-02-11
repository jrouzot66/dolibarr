

















create table llx_element_categorie
(
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  fk_categorie  integer NOT NULL,
  fk_element  integer NOT NULL,
  import_key    varchar(14)
)ENGINE=innodb;
