



















ALTER TABLE llx_product_customer_price ADD INDEX idx_product_customer_price_fk_user (fk_user);
ALTER TABLE llx_product_customer_price ADD INDEX idx_product_customer_price_fk_soc (fk_soc);
ALTER TABLE llx_product_customer_price ADD UNIQUE INDEX uk_customer_price_fk_product_fk_soc (fk_product, fk_soc);

ALTER TABLE llx_product_customer_price ADD CONSTRAINT fk_product_customer_price_fk_user FOREIGN KEY (fk_user) REFERENCES llx_user (rowid);
ALTER TABLE llx_product_customer_price ADD CONSTRAINT fk_product_customer_price_fk_product FOREIGN KEY (fk_product) REFERENCES llx_product(rowid);
ALTER TABLE llx_product_customer_price ADD CONSTRAINT fk_product_customer_price_fk_soc FOREIGN KEY (fk_soc) REFERENCES llx_societe(rowid);
