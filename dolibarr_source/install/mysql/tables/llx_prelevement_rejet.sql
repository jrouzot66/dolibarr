

















create table llx_prelevement_rejet
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  fk_prelevement_lignes integer,
  date_rejet            datetime,
  motif                 integer,
  date_creation         datetime,
  fk_user_creation      integer,
  note                  text,
  afacturer             tinyint default 0,
  fk_facture            integer
)ENGINE=innodb;
