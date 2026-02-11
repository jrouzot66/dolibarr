
















CREATE TABLE llx_supplier_proposaldet (
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  fk_supplier_proposal integer NOT NULL,
  fk_parent_line integer DEFAULT NULL,
  fk_product integer DEFAULT NULL,
  label varchar(255) DEFAULT NULL,
  description text,
  fk_remise_except integer DEFAULT NULL,
  vat_src_code					varchar(10) DEFAULT '',		
  tva_tx 						double(7,4) DEFAULT 0,		
  localtax1_tx double(7,4) DEFAULT 0,
  localtax1_type varchar(10) DEFAULT NULL,
  localtax2_tx double(7,4) DEFAULT 0,
  localtax2_type varchar(10) DEFAULT NULL,
  qty double DEFAULT NULL,
  remise_percent double DEFAULT '0',
  remise double DEFAULT '0',
  price double DEFAULT NULL,
  subprice double(24,8) DEFAULT 0,
  total_ht double(24,8) DEFAULT 0,
  total_tva double(24,8) DEFAULT 0,
  total_localtax1 double(24,8) DEFAULT 0,
  total_localtax2 double(24,8) DEFAULT 0,
  total_ttc double(24,8) DEFAULT 0,
  product_type integer DEFAULT 0,
  date_start	datetime   DEFAULT NULL,         
  date_end		datetime   DEFAULT NULL,         
  info_bits integer DEFAULT 0,
  buy_price_ht double(24,8) DEFAULT 0,
  fk_product_fournisseur_price integer DEFAULT NULL,
  special_code integer DEFAULT 0,
  rang integer DEFAULT 0,
  ref_fourn varchar(30) DEFAULT NULL,
  fk_multicurrency        integer,
  multicurrency_code      varchar(3),
  multicurrency_subprice  double(24,8) DEFAULT 0,
  multicurrency_total_ht  double(24,8) DEFAULT 0,
  multicurrency_total_tva double(24,8) DEFAULT 0,
  multicurrency_total_ttc double(24,8) DEFAULT 0,
  fk_unit integer DEFAULT NULL
) ENGINE=innodb;
