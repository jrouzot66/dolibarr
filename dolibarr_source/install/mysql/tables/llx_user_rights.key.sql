























ALTER TABLE llx_user_rights ADD UNIQUE INDEX uk_user_rights (entity, fk_user, fk_id);

ALTER TABLE llx_user_rights ADD CONSTRAINT fk_user_rights_fk_user_user FOREIGN KEY (fk_user)    REFERENCES llx_user (rowid);
