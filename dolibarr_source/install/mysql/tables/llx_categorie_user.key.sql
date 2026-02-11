

















ALTER TABLE llx_categorie_user ADD PRIMARY KEY pk_categorie_user (fk_categorie, fk_user);
ALTER TABLE llx_categorie_user ADD INDEX idx_categorie_user_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_user ADD INDEX idx_categorie_user_fk_user (fk_user);

ALTER TABLE llx_categorie_user ADD CONSTRAINT fk_categorie_user_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_user ADD CONSTRAINT fk_categorie_user_fk_user FOREIGN KEY (fk_user) REFERENCES llx_user (rowid);

