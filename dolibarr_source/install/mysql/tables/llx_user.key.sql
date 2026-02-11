




















ALTER TABLE llx_user ADD UNIQUE INDEX uk_user_login (login, entity);

ALTER TABLE llx_user ADD INDEX idx_user_fk_societe (fk_soc);

ALTER TABLE llx_user ADD UNIQUE INDEX uk_user_fk_socpeople (fk_socpeople);
ALTER TABLE llx_user ADD UNIQUE INDEX uk_user_fk_member    (fk_member);
ALTER TABLE llx_user ADD UNIQUE INDEX uk_user_api_key      (api_key);
