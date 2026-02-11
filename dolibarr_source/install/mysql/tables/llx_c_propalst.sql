



















create table llx_c_propalst
(
  id              smallint    PRIMARY KEY,
  code            varchar(12) NOT NULL,
  label           varchar(128),
  sortorder       smallint DEFAULT 0,
  active          tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;

