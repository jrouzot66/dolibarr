



















ALTER TABLE llx_c_ziptown ADD INDEX idx_c_ziptown_fk_county (fk_county);
ALTER TABLE llx_c_ziptown ADD INDEX idx_c_ziptown_fk_pays   (fk_pays);
ALTER TABLE llx_c_ziptown ADD INDEX idx_c_ziptown_zip       (zip);

ALTER TABLE llx_c_ziptown ADD CONSTRAINT fk_c_ziptown_fk_county	FOREIGN KEY (fk_county) REFERENCES llx_c_departements (rowid);
ALTER TABLE llx_c_ziptown ADD CONSTRAINT fk_c_ziptown_fk_pays   FOREIGN KEY (fk_pays)   REFERENCES llx_c_country(rowid);

ALTER TABLE llx_c_ziptown ADD UNIQUE INDEX uk_ziptown_fk_pays (zip, town, fk_pays);
