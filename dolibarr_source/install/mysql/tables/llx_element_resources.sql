


















CREATE TABLE llx_element_resources
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  element_id	  integer,
  element_type    varchar(64),
  resource_id     integer,			
  resource_type	  varchar(64),		
  busy			  integer,
  mandatory		  integer,
  duree				real,               
  fk_user_create  integer,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=innodb;
