






















ALTER TABLE llx_usergroup_rights ADD UNIQUE INDEX uk_usergroup_rights (entity, fk_usergroup, fk_id);

ALTER TABLE llx_usergroup_rights ADD CONSTRAINT fk_usergroup_rights_fk_usergroup FOREIGN KEY (fk_usergroup)    REFERENCES llx_usergroup (rowid);
