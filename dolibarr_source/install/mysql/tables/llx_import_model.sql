



















create table llx_import_model
(
  	rowid         integer AUTO_INCREMENT PRIMARY KEY,
  	entity        integer DEFAULT 0 NOT NULL,      				
	fk_user		  integer DEFAULT 0 NOT NULL,
  	label         varchar(50) NOT NULL,
  	type		  varchar(64) NOT NULL,
  	field         text NOT NULL
)ENGINE=innodb;
