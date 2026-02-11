




















create table llx_societe_remise_except
(
  rowid						integer AUTO_INCREMENT PRIMARY KEY,
  entity					integer DEFAULT 1 NOT NULL,				
  fk_soc					integer NOT NULL,						
  discount_type				integer DEFAULT 0 NOT NULL,				
  datec						datetime,
  amount_ht					double(24,8) NOT NULL,
  amount_tva				double(24,8) DEFAULT 0 NOT NULL,
  amount_ttc				double(24,8) DEFAULT 0 NOT NULL,
  tva_tx					double(7,4)  DEFAULT 0 NOT NULL,
  vat_src_code				varchar(10)  DEFAULT '',				
  fk_user					integer NOT NULL,
  fk_facture_line			integer,
  fk_facture				integer,
  fk_facture_source			integer,
  fk_invoice_supplier_line	integer,
  fk_invoice_supplier		integer,
  fk_invoice_supplier_source integer,
  description				text NOT NULL,
  multicurrency_code		varchar(3) NULL,
  multicurrency_tx			double(24,8) NULL,
  multicurrency_amount_ht	double(24,8) DEFAULT 0 NOT NULL,
  multicurrency_amount_tva	double(24,8) DEFAULT 0 NOT NULL,
  multicurrency_amount_ttc	double(24,8) DEFAULT 0 NOT NULL
)ENGINE=innodb;
