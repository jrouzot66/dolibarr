


















create table llx_stock_mouvement
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datem           datetime,						
  fk_product      integer NOT NULL,				
  batch           varchar(128) DEFAULT NULL,	
  eatby           date DEFAULT NULL,			
  sellby          date DEFAULT NULL,			
  fk_entrepot     integer NOT NULL,				
  value			  real,							
  price           double(24,8) DEFAULT 0,		
  type_mouvement  smallint,						
  fk_user_author  integer,						
  label           varchar(255),					
  inventorycode   varchar(128),					
  fk_project	  integer,
  fk_origin       integer,
  origintype      varchar(64),
  model_pdf       varchar(255),
  fk_projet       integer NOT NULL DEFAULT 0
)ENGINE=innodb;
