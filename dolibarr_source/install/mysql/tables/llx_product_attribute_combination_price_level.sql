

















CREATE TABLE llx_product_attribute_combination_price_level
(
  rowid INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  fk_product_attribute_combination INTEGER DEFAULT 1 NOT NULL,
  fk_price_level INTEGER DEFAULT 1 NOT NULL,
  variation_price DOUBLE(24,8) NOT NULL,
  variation_price_percentage INTEGER NULL
)ENGINE=innodb;

