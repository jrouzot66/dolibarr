





















CREATE TABLE llx_c_accounting_category (
  rowid 				integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  entity 				integer NOT NULL DEFAULT 1,
  code 					varchar(16) NOT NULL,
  label 				varchar(255) NOT NULL,
  range_account			varchar(255) NOT NULL,			 
  sens 					tinyint NOT NULL DEFAULT '0',    
  category_type			tinyint NOT NULL DEFAULT '0',    
  formula				varchar(255) NOT NULL,			 
  position    			integer DEFAULT 0,
  fk_country 			integer DEFAULT NULL,			 
  active 				integer DEFAULT 1
) ENGINE=innodb;
