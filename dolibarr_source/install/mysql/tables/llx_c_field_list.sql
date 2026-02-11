























create table llx_c_field_list
(
  rowid			integer  AUTO_INCREMENT PRIMARY KEY,
  tms			timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  element		varchar(64)        			NOT NULL,		
  entity		integer			DEFAULT 1 	NOT NULL,		
  name			varchar(32)        			NOT NULL,		
  alias			varchar(32)					NOT NULL,		
  title			varchar(32)        			NOT NULL,		
  align			varchar(6)		DEFAULT 'left',				
  sort			tinyint 		DEFAULT 1  	NOT NULL,		
  search		tinyint 		DEFAULT 0  	NOT NULL,		
  visible		tinyint			DEFAULT 1	NOT NULL,		
  enabled       varchar(255)	DEFAULT 1,					
  rang      	integer 		DEFAULT 0
)ENGINE=innodb;
