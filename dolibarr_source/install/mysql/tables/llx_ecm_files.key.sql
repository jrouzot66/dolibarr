


















ALTER TABLE llx_ecm_files ADD UNIQUE INDEX uk_ecm_files (filepath, filename, entity);
ALTER TABLE llx_ecm_files ADD INDEX idx_ecm_files_label (label);




