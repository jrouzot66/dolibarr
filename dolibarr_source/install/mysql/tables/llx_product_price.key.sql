

















ALTER TABLE llx_product_price ADD INDEX idx_product_price_fk_user_author (fk_user_author);
ALTER TABLE llx_product_price ADD INDEX idx_product_price_fk_product (fk_product);

ALTER TABLE llx_product_price ADD CONSTRAINT fk_product_price_user_author FOREIGN KEY (fk_product) REFERENCES  llx_product (rowid);

