

















create table llx_c_ziptown
(
  rowid				integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  code				varchar(5) DEFAULT NULL, 		
  fk_county			integer,	         			
  fk_pays           integer NOT NULL DEFAULT 0,     
  zip	 			varchar(10) NOT NULL,			
  town				varchar(180) NOT NULL,			
  town_up			varchar(180),					
  active 			tinyint NOT NULL DEFAULT 1
)ENGINE=innodb;
