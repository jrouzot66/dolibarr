


















create table llx_c_regions
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY,
  code_region integer NOT NULL,
  fk_pays     integer NOT NULL,
  cheflieu    varchar(50),
  tncc        integer,
  nom         varchar(100),
  active      tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;

