



















create table llx_paiementfourn_facturefourn
(
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  fk_paiementfourn INTEGER DEFAULT NULL,
  fk_facturefourn  INTEGER DEFAULT NULL,
  amount double(24,8) DEFAULT 0,
  
  multicurrency_code	varchar(3),
  multicurrency_tx		double(24,8) DEFAULT 1,
  multicurrency_amount	double(24,8) DEFAULT 0
)ENGINE=innodb;
