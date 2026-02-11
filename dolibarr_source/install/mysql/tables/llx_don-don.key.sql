


















ALTER TABLE llx_don ADD UNIQUE INDEX idx_don_uk_ref (ref, entity);

ALTER TABLE llx_don ADD INDEX idx_don_fk_soc (fk_soc);
ALTER TABLE llx_don ADD INDEX idx_don_fk_project (fk_project);
ALTER TABLE llx_don ADD INDEX idx_don_fk_user_author (fk_user_author);
ALTER TABLE llx_don ADD INDEX idx_don_fk_user_valid (fk_user_valid);




