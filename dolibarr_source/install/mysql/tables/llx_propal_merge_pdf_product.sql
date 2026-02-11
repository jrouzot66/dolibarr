















CREATE TABLE llx_propal_merge_pdf_product (
  rowid integer NOT NULL auto_increment PRIMARY KEY,
  fk_product integer NOT NULL,
  file_name varchar(200) NOT NULL,
  lang 	varchar(5) DEFAULT NULL,
  fk_user_author integer DEFAULT NULL,
  fk_user_mod integer NOT NULL,
  datec datetime NOT NULL,
  tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  import_key varchar(14) DEFAULT NULL
) ENGINE=innodb;

