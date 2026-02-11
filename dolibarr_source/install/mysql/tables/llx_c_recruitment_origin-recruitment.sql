


























create table llx_c_recruitment_origin
(
  rowid      	integer AUTO_INCREMENT PRIMARY KEY,
  code          varchar(32) NOT NULL,
  label 	    varchar(128)	NOT NULL,
  active  	    tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;
