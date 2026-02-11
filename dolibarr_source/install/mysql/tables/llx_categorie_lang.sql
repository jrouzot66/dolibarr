




















create table llx_categorie_lang
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  fk_category    integer      DEFAULT 0 NOT NULL,
  lang           varchar(5)   DEFAULT 0 NOT NULL,
  label          varchar(255) NOT NULL,
  description    text
)ENGINE=innodb;
