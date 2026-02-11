




















create table llx_categorie_warehouse
(
  fk_categorie  integer NOT NULL,
  fk_warehouse  integer NOT NULL,
  import_key    varchar(14)
)ENGINE=innodb;
