



















ALTER TABLE llx_ecm_directories ADD UNIQUE INDEX uk_ecm_directories (label, fk_parent, entity);

ALTER TABLE llx_ecm_directories ADD INDEX idx_ecm_directories_fk_user_c (fk_user_c);
ALTER TABLE llx_ecm_directories ADD INDEX idx_ecm_directories_fk_user_m (fk_user_m);

ALTER TABLE llx_ecm_directories ADD CONSTRAINT fk_ecm_directories_fk_user_c      FOREIGN KEY (fk_user_c)         REFERENCES llx_user (rowid);
ALTER TABLE llx_ecm_directories ADD CONSTRAINT fk_ecm_directories_fk_user_m      FOREIGN KEY (fk_user_m)         REFERENCES llx_user (rowid);
