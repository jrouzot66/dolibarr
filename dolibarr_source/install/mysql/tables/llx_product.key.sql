






















ALTER TABLE llx_product ADD UNIQUE INDEX uk_product_ref (ref, entity);

ALTER TABLE llx_product ADD INDEX idx_product_label (label);
ALTER TABLE llx_product ADD INDEX idx_product_barcode (barcode);
ALTER TABLE llx_product ADD INDEX idx_product_import_key (import_key);
ALTER TABLE llx_product ADD INDEX idx_product_seuil_stock_alerte (seuil_stock_alerte);
ALTER TABLE llx_product ADD INDEX idx_product_fk_country (fk_country);
ALTER TABLE llx_product ADD INDEX idx_product_fk_user_author (fk_user_author);
ALTER TABLE llx_product ADD INDEX idx_product_fk_barcode_type (fk_barcode_type);
ALTER TABLE llx_product ADD INDEX idx_product_fk_project (fk_project);
ALTER TABLE llx_product ADD UNIQUE INDEX uk_product_barcode (barcode, fk_barcode_type, entity);
ALTER TABLE llx_product ADD CONSTRAINT fk_product_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
ALTER TABLE llx_product ADD CONSTRAINT fk_product_finished FOREIGN KEY (finished) REFERENCES llx_c_product_nature (code);

ALTER TABLE  llx_product ADD CONSTRAINT fk_product_fk_country FOREIGN KEY (fk_country) REFERENCES  llx_c_country (rowid);
ALTER TABLE  llx_product ADD CONSTRAINT fk_product_barcode_type FOREIGN KEY (fk_barcode_type) REFERENCES  llx_c_barcode_type (rowid);
ALTER TABLE  llx_product ADD CONSTRAINT fk_product_default_warehouse FOREIGN KEY (fk_default_warehouse) REFERENCES llx_entrepot (rowid);
