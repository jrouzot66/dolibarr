


















ALTER TABLE llx_c_departements ADD UNIQUE uk_departements (code_departement,fk_region);

ALTER TABLE llx_c_departements ADD INDEX idx_departements_fk_region (fk_region);


ALTER TABLE llx_c_regions ADD UNIQUE INDEX uk_code_region (code_region);

ALTER TABLE llx_c_departements ADD CONSTRAINT fk_departements_fk_region	FOREIGN KEY (fk_region) REFERENCES llx_c_regions (code_region);

