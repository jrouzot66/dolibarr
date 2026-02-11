




















create table llx_c_country
(
  rowid    		integer            PRIMARY KEY,
  code     		varchar(2)         NOT NULL,	
  code_iso 		varchar(3),						
  numeric_code 	varchar(3),						
  label    		varchar(128)       NOT NULL,
  eec      		tinyint DEFAULT 0  NOT NULL,
  active   		tinyint DEFAULT 1  NOT NULL,
  favorite 		tinyint DEFAULT 0  NOT NULL
)ENGINE=innodb;


