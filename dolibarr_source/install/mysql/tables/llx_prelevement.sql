

















create table llx_prelevement
(
  rowid                  integer AUTO_INCREMENT PRIMARY KEY,
  fk_facture             integer NULL,
  fk_facture_fourn       integer NULL,
  fk_salary              integer NULL,
  fk_prelevement_lignes  integer NOT NULL
)ENGINE=innodb;
