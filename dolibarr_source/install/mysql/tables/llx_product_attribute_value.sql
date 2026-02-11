




















CREATE TABLE llx_product_attribute_value
(
  rowid					INTEGER			PRIMARY KEY NOT NULL AUTO_INCREMENT,
  fk_product_attribute	INTEGER			NOT NULL,
  ref					VARCHAR(180)	NOT NULL,
  value					VARCHAR(255)	NOT NULL,
  entity				INTEGER			DEFAULT 1 NOT NULL,
  position				INTEGER			NOT NULL DEFAULT 0
)ENGINE=innodb;
