


















create table llx_paiementfourn
(
  rowid					integer AUTO_INCREMENT PRIMARY KEY,
  ref					varchar(30),
  entity				integer DEFAULT 1,
  tms					timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec					datetime,          
  datep					datetime,          
  amount				double(24,8) DEFAULT 0,    
  multicurrency_amount	double(24,8) DEFAULT 0,    
  fk_user_author		integer,           
  fk_user_modif 		integer,
  fk_paiement			integer NOT NULL,  
  num_paiement			varchar(50),       
  note					text,
  fk_bank				integer NOT NULL,
  statut				smallint NOT NULL DEFAULT 0,
  model_pdf				varchar(255)
)ENGINE=innodb;
