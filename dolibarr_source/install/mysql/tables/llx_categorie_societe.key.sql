

















ALTER TABLE llx_categorie_societe ADD PRIMARY KEY pk_categorie_societe (fk_categorie, fk_soc);
ALTER TABLE llx_categorie_societe ADD INDEX idx_categorie_societe_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_societe ADD INDEX idx_categorie_societe_fk_societe (fk_soc);

ALTER TABLE llx_categorie_societe ADD CONSTRAINT fk_categorie_societe_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_societe ADD CONSTRAINT fk_categorie_societe_fk_soc   FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
