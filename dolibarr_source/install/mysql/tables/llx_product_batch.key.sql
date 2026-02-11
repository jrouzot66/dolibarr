

















ALTER TABLE llx_product_batch ADD INDEX idx_fk_product_stock(fk_product_stock);
ALTER TABLE llx_product_batch ADD INDEX idx_batch(batch);
ALTER TABLE llx_product_batch ADD CONSTRAINT fk_product_batch_fk_product_stock FOREIGN KEY (fk_product_stock) REFERENCES llx_product_stock (rowid);

ALTER TABLE llx_product_batch ADD UNIQUE INDEX uk_product_batch (fk_product_stock, batch);

