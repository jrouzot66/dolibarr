

















ALTER TABLE llx_resource ADD UNIQUE INDEX uk_resource_ref (ref, entity);

ALTER TABLE llx_resource ADD INDEX fk_code_type_resource_idx (fk_code_type_resource);

ALTER TABLE llx_resource ADD INDEX idx_resource_fk_country (fk_country);
ALTER TABLE llx_resource ADD CONSTRAINT fk_resource_fk_country FOREIGN KEY (fk_country) REFERENCES llx_c_country (rowid);

ALTER TABLE llx_resource ADD INDEX idx_resource_fk_state (fk_state);

