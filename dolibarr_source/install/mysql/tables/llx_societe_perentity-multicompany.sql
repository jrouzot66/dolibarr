

















create table llx_societe_perentity
(
  rowid         			integer AUTO_INCREMENT PRIMARY KEY,
  fk_soc        			integer,
  entity             		integer DEFAULT 1 NOT NULL,             
  accountancy_code_customer varchar(24),                         	
  accountancy_code_supplier varchar(24),                         	
  accountancy_code_sell		varchar(32),                            
  accountancy_code_buy		varchar(32)                             
)ENGINE=innodb;
