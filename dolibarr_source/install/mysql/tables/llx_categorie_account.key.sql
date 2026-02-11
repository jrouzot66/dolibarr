


















ALTER TABLE llx_categorie_account ADD PRIMARY KEY pk_categorie_account (fk_categorie, fk_account);
ALTER TABLE llx_categorie_account ADD INDEX idx_categorie_account_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_account ADD INDEX idx_categorie_account_fk_account (fk_account);

ALTER TABLE llx_categorie_account ADD CONSTRAINT fk_categorie_account_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_account ADD CONSTRAINT fk_categorie_account_fk_account FOREIGN KEY (fk_account) REFERENCES llx_bank_account (rowid);

