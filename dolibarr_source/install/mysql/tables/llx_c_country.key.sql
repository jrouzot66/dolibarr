


















ALTER TABLE llx_c_country ADD UNIQUE INDEX idx_c_country_code (code);
ALTER TABLE llx_c_country ADD UNIQUE INDEX idx_c_country_code_iso (code_iso);
ALTER TABLE llx_c_country ADD UNIQUE INDEX idx_c_country_label (label);
