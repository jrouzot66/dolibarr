


















ALTER TABLE llx_product_association ADD UNIQUE INDEX uk_product_association (fk_product_pere, fk_product_fils);

ALTER TABLE llx_product_association ADD INDEX idx_product_association_fils (fk_product_fils);
