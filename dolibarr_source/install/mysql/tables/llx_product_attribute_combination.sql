



















CREATE TABLE llx_product_attribute_combination
(
  rowid INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  fk_product_parent INTEGER NOT NULL,					
  fk_product_child INTEGER NOT NULL,					
  variation_price DOUBLE(24,8) NOT NULL,
  variation_price_percentage INTEGER NULL,
  variation_weight REAL NOT NULL,
  variation_ref_ext VARCHAR(255) NULL,
  entity INTEGER DEFAULT 1 NOT NULL
)ENGINE=innodb;
