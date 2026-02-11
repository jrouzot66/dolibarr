

















ALTER TABLE llx_usergroup_user ADD UNIQUE INDEX uk_usergroup_user (entity,fk_user,fk_usergroup);

ALTER TABLE llx_usergroup_user ADD CONSTRAINT fk_usergroup_user_fk_user      FOREIGN KEY (fk_user)         REFERENCES llx_user (rowid);
ALTER TABLE llx_usergroup_user ADD CONSTRAINT fk_usergroup_user_fk_usergroup FOREIGN KEY (fk_usergroup)    REFERENCES llx_usergroup (rowid);
