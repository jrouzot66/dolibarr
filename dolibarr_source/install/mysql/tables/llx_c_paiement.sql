





















create table llx_c_paiement
(
  id					integer AUTO_INCREMENT PRIMARY KEY,
  entity				integer	DEFAULT 1 NOT NULL,	
  code       		varchar(6)  NOT NULL,
  libelle    		varchar(128),
  type       		smallint,	
  active     		tinyint DEFAULT 1  NOT NULL,
  accountancy_code	varchar(32) NULL,
  module     		varchar(32) NULL,
  position			integer NOT NULL DEFAULT 0
)ENGINE=innodb;
