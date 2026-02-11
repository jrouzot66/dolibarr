

















create table llx_paiement_facture
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  fk_paiement     integer,
  fk_facture      integer,
  amount          double(24,8)     DEFAULT 0,
  
  multicurrency_code		varchar(3),
  multicurrency_tx		double(24,8) DEFAULT 1,
  multicurrency_amount	double(24,8) DEFAULT 0
)ENGINE=innodb;
