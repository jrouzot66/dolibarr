



























create table llx_c_type_container
(
  rowid      	integer AUTO_INCREMENT PRIMARY KEY,
  code          varchar(32) NOT NULL,
  entity		integer	DEFAULT 1 NOT NULL,	
  label 	    varchar(128)	NOT NULL,
  module     	varchar(32) NULL,
  position      integer DEFAULT 0,
  active  	    tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;
