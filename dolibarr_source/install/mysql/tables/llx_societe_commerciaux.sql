


















create table llx_societe_commerciaux
(
  rowid         integer AUTO_INCREMENT PRIMARY KEY,
  fk_soc        integer,
  fk_user       integer,
  import_key	varchar(14)
)ENGINE=innodb;

