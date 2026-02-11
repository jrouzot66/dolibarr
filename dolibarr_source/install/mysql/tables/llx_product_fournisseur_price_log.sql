


















create table llx_product_fournisseur_price_log
(
  rowid                       integer AUTO_INCREMENT PRIMARY KEY,
  datec                       datetime,
  fk_product_fournisseur      integer      NOT NULL,
  price                       double(24,8) DEFAULT 0,
  quantity                    double,
  fk_user                     integer,

  fk_multicurrency			integer,
  multicurrency_code		varchar(3),
  multicurrency_tx			double(24,8) DEFAULT 1,
  multicurrency_unitprice	double(24,8) DEFAULT NULL,		
  multicurrency_price		double(24,8) DEFAULT NULL
)ENGINE=innodb;
