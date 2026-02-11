


















create table llx_user_alert
(
  rowid        integer AUTO_INCREMENT PRIMARY KEY,
  type         integer,
  fk_contact   integer, 	
  fk_user      integer  	
)ENGINE=innodb;
