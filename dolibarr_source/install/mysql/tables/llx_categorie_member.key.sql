



















ALTER TABLE llx_categorie_member ADD PRIMARY KEY pk_categorie_member (fk_categorie, fk_member);
ALTER TABLE llx_categorie_member ADD INDEX idx_categorie_member_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_member ADD INDEX idx_categorie_member_fk_member (fk_member);

ALTER TABLE llx_categorie_member ADD CONSTRAINT fk_categorie_member_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_member ADD CONSTRAINT fk_categorie_member_member_rowid   FOREIGN KEY (fk_member) REFERENCES llx_adherent (rowid);
