



















create table llx_adherent_type_lang
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  fk_type        integer      DEFAULT 0 NOT NULL,
  lang           varchar(5)   DEFAULT 0 NOT NULL,
  label          varchar(255) NOT NULL,
  description    text,
  email          text,
  import_key varchar(14) DEFAULT NULL
)ENGINE=innodb;
