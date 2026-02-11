


















create table llx_c_ecotaxe
(
  rowid			integer      AUTO_INCREMENT PRIMARY KEY,
  code			varchar(64)  NOT NULL,			
  label			varchar(255),					
  price			double(24,8),					
  organization	varchar(255),					
  fk_pays		integer NOT NULL,				
  active		tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;
