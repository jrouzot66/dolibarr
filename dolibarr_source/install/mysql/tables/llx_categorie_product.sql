



















create table llx_categorie_product
(
  fk_categorie  integer NOT NULL,
  fk_product    integer NOT NULL,
  import_key    varchar(14)
)ENGINE=innodb;
