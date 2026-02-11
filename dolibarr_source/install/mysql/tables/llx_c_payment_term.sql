



















create table llx_c_payment_term
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  entity				integer	DEFAULT 1 NOT NULL,	
  code				varchar(16),
  sortorder			smallint,
  active				tinyint DEFAULT 1,
  libelle			varchar(255),
  libelle_facture	text,
  type_cdr			tinyint,    			
  nbjour				smallint,
  decalage			smallint,
  deposit_percent		varchar(63) DEFAULT NULL,
  module				varchar(32) NULL,
  position			integer NOT NULL DEFAULT 0
)ENGINE=innodb;
