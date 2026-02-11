

























create table llx_commande_fournisseur_dispatch
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  fk_product     integer,
  fk_commande    integer,                       
  fk_commandefourndet integer,                  
  element_type   varchar(50) DEFAULT 'supplier_order' NOT NULL,   
  fk_projet  	 integer  DEFAULT NULL,
  fk_reception 	 integer  DEFAULT NULL,
  qty            float,             			
  fk_entrepot    integer,						
  comment		 varchar(255),					
  batch          varchar(128) DEFAULT NULL,		
  eatby          date DEFAULT NULL,
  sellby         date DEFAULT NULL,
  status         integer,
  fk_user        integer,
  datec          datetime,
  tms            timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  cost_price     double(24,8) DEFAULT 0
)ENGINE=innodb;
