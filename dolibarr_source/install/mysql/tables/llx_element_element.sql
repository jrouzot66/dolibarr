





















create table llx_element_element
(
  rowid           	integer AUTO_INCREMENT PRIMARY KEY,  
  fk_source			integer NOT NULL,
  sourcetype		varchar(32) NOT NULL,
  fk_target			integer NOT NULL,
  targettype		varchar(32) NOT NULL
) ENGINE=innodb;

