

















ALTER TABLE llx_user_employment ADD UNIQUE INDEX uk_user_employment (ref,entity);

ALTER TABLE llx_user_employment ADD CONSTRAINT fk_user_employment_fk_user FOREIGN KEY (fk_user) REFERENCES llx_user (rowid);
