



















ALTER TABLE llx_product_stock ADD INDEX idx_product_stock_fk_product (fk_product);
ALTER TABLE llx_product_stock ADD INDEX idx_product_stock_fk_entrepot (fk_entrepot);
ALTER TABLE llx_product_stock ADD CONSTRAINT fk_product_product_rowid FOREIGN KEY (fk_product) REFERENCES llx_product (rowid);
ALTER TABLE llx_product_stock ADD CONSTRAINT fk_entrepot_entrepot_rowid FOREIGN KEY (fk_entrepot) REFERENCES llx_entrepot (rowid);

ALTER TABLE llx_product_stock ADD UNIQUE INDEX uk_product_stock (fk_product,fk_entrepot);
