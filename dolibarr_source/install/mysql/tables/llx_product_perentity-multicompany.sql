

















create table llx_product_perentity
(
  rowid         				integer AUTO_INCREMENT PRIMARY KEY,
  fk_product	   				integer,
  entity             			integer DEFAULT 1 NOT NULL,      	
  accountancy_code_sell         varchar(32),                        
  accountancy_code_sell_intra   varchar(32),                        
  accountancy_code_sell_export  varchar(32),                        
  accountancy_code_buy          varchar(32),                        
  accountancy_code_buy_intra    varchar(32),                        
  accountancy_code_buy_export   varchar(32),                  		
  pmp double(24,8)
)ENGINE=innodb;
