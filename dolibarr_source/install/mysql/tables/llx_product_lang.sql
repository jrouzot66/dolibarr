



















create table llx_product_lang
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  fk_product     integer      DEFAULT 0 NOT NULL,
  lang           varchar(5)   DEFAULT 0 NOT NULL,
  label          varchar(255) NOT NULL,
  description    text,
  note           text,
  import_key varchar(14) DEFAULT NULL
)ENGINE=innodb;
