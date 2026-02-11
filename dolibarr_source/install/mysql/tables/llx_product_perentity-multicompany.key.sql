

















ALTER TABLE llx_product_perentity ADD INDEX idx_product_perentity_fk_product (fk_product);

ALTER TABLE llx_product_perentity ADD UNIQUE INDEX uk_product_perentity (fk_product, entity);
