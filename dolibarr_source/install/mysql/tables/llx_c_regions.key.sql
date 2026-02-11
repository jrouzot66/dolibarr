


















ALTER TABLE llx_c_regions ADD INDEX idx_c_regions_fk_pays (fk_pays);
ALTER TABLE llx_c_regions ADD UNIQUE INDEX uk_code_region (code_region);
ALTER TABLE llx_c_regions ADD CONSTRAINT fk_c_regions_fk_pays	FOREIGN KEY (fk_pays)     REFERENCES llx_c_country (rowid);
