


















create table llx_bank_url
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  fk_bank         integer,
  url_id          integer,
  url             varchar(255),
  label           varchar(255),
  type            varchar(24) NOT NULL
)ENGINE=innodb;
