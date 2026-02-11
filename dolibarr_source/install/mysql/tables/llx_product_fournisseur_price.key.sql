




















ALTER TABLE llx_product_fournisseur_price ADD INDEX idx_product_fournisseur_price_fk_user (fk_user);

ALTER TABLE llx_product_fournisseur_price ADD CONSTRAINT fk_product_fournisseur_price_fk_user    FOREIGN KEY (fk_user)    REFERENCES llx_user (rowid);

ALTER TABLE llx_product_fournisseur_price ADD UNIQUE INDEX uk_product_fournisseur_price_ref (ref_fourn, fk_soc, quantity, entity);

ALTER TABLE llx_product_fournisseur_price ADD INDEX idx_product_fourn_price_fk_product (fk_product, entity);
ALTER TABLE llx_product_fournisseur_price ADD INDEX idx_product_fourn_price_fk_soc (fk_soc, entity);

ALTER TABLE llx_product_fournisseur_price ADD CONSTRAINT fk_product_fournisseur_price_fk_product FOREIGN KEY (fk_product) REFERENCES llx_product (rowid);

ALTER TABLE llx_product_fournisseur_price ADD INDEX idx_product_barcode (barcode);
ALTER TABLE llx_product_fournisseur_price ADD INDEX idx_product_fk_barcode_type (fk_barcode_type);
ALTER TABLE llx_product_fournisseur_price ADD UNIQUE INDEX uk_product_barcode (barcode, fk_barcode_type, entity);
ALTER TABLE llx_product_fournisseur_price ADD CONSTRAINT fk_product_fournisseur_price_barcode_type FOREIGN KEY (fk_barcode_type) REFERENCES  llx_c_barcode_type (rowid);

