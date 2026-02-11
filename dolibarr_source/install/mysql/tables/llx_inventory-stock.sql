


















CREATE TABLE llx_inventory 
( 
  rowid integer NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  entity integer DEFAULT 0, 
  ref varchar(48),							
  date_creation datetime DEFAULT NULL,
  tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
  fk_user_creat	integer,					
  fk_user_modif integer,                    
  fk_user_valid integer,                    
  fk_warehouse integer DEFAULT NULL, 
  fk_product integer DEFAULT NULL,
  categories_product varchar(255) DEFAULT NULL, 
  status integer DEFAULT 0,
  title varchar(255) NOT NULL, 
  date_inventory datetime DEFAULT NULL,
  date_validation datetime DEFAULT NULL,
  import_key               varchar(14)       	
) 
ENGINE=innodb;
