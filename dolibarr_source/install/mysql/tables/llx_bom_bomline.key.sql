
















ALTER TABLE llx_bom_bomline ADD INDEX idx_bom_bomline_rowid (rowid);
ALTER TABLE llx_bom_bomline ADD INDEX idx_bom_bomline_fk_product (fk_product);
ALTER TABLE llx_bom_bomline ADD INDEX idx_bom_bomline_fk_bom (fk_bom);




ALTER TABLE llx_bom_bomline ADD CONSTRAINT llx_bom_bomline_fk_bom FOREIGN KEY (fk_bom) REFERENCES llx_bom_bom(rowid);

