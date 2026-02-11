

















ALTER TABLE llx_categorie_contact ADD PRIMARY KEY pk_categorie_contact (fk_categorie, fk_socpeople);
ALTER TABLE llx_categorie_contact ADD INDEX idx_categorie_contact_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_contact ADD INDEX idx_categorie_contact_fk_socpeople (fk_socpeople);

ALTER TABLE llx_categorie_contact ADD CONSTRAINT fk_categorie_contact_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_contact ADD CONSTRAINT fk_categorie_contact_fk_socpeople   FOREIGN KEY (fk_socpeople) REFERENCES llx_socpeople (rowid);
