
















ALTER TABLE llx_societe_account ADD INDEX idx_societe_account_rowid (rowid);
ALTER TABLE llx_societe_account ADD INDEX idx_societe_account_login (login);
ALTER TABLE llx_societe_account ADD INDEX idx_societe_account_status (status);
ALTER TABLE llx_societe_account ADD INDEX idx_societe_account_fk_website (fk_website);
ALTER TABLE llx_societe_account ADD INDEX idx_societe_account_fk_soc (fk_soc);


ALTER TABLE llx_societe_account ADD UNIQUE INDEX uk_societe_account_login_website_soc(entity, fk_soc, login, site, fk_website);
ALTER TABLE llx_societe_account ADD UNIQUE INDEX uk_societe_account_key_account_soc(entity, fk_soc, key_account, site, fk_website);




ALTER TABLE llx_societe_account ADD CONSTRAINT llx_societe_account_fk_societe FOREIGN KEY (fk_soc) REFERENCES llx_societe(rowid);

