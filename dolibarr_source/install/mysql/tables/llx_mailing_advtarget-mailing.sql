


















CREATE TABLE llx_mailing_advtarget
(
  rowid integer NOT NULL auto_increment PRIMARY KEY,
  name varchar(180) NOT NULL,
  entity integer NOT NULL DEFAULT 1,
  fk_element	integer NOT NULL,
  type_element	varchar(180) NOT NULL,
  filtervalue	text,
  fk_user_author integer NOT NULL,
  datec datetime NOT NULL,
  fk_user_mod integer NOT NULL,
  tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL
)ENGINE=innodb;
