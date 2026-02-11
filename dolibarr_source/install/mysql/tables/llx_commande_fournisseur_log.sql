


















create table llx_commande_fournisseur_log
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  tms              timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datelog          datetime NOT NULL,
  fk_commande      integer NOT NULL,
  fk_statut        smallint NOT NULL,
  fk_user          integer NOT NULL,
  comment          varchar(255) NULL
)ENGINE=innodb;
