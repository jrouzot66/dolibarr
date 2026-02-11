


























create table llx_c_partnership_type
(
  rowid      	integer AUTO_INCREMENT PRIMARY KEY,
  entity        integer DEFAULT 1 NOT NULL,
  code          varchar(32) NOT NULL,
  label 	    varchar(128)	NOT NULL,
  keyword		varchar(128),					
  active  	    tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;

