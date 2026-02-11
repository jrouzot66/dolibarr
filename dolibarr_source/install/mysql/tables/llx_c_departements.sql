


















create table llx_c_departements
(
  rowid            integer    AUTO_INCREMENT PRIMARY KEY,
  code_departement varchar(6) NOT NULL,
  fk_region        integer,
  cheflieu         varchar(50),
  tncc             integer,
  ncc              varchar(50),
  nom              varchar(50),
  active           tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;



