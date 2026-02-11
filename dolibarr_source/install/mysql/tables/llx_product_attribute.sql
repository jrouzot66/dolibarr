




















CREATE TABLE llx_product_attribute
(
  rowid		INTEGER			PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ref		VARCHAR(255)	NOT NULL,
  ref_ext	VARCHAR(255)	NULL,
  label		VARCHAR(255)	NOT NULL,
  position	INTEGER			DEFAULT 0 NOT NULL,
  entity	INTEGER			DEFAULT 1 NOT NULL
)ENGINE=innodb;
