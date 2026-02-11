




















ALTER TABLE llx_product_price_by_qty ADD UNIQUE INDEX uk_product_price_by_qty_level (fk_product_price, quantity);

ALTER TABLE llx_product_price_by_qty ADD INDEX idx_product_price_by_qty_fk_product_price (fk_product_price);

ALTER TABLE llx_product_price_by_qty ADD CONSTRAINT fk_product_price_by_qty_fk_product_price FOREIGN KEY (fk_product_price) REFERENCES llx_product_price (rowid);
