


















ALTER TABLE llx_categorie_actioncomm ADD PRIMARY KEY pk_categorie_actioncomm (fk_categorie, fk_actioncomm);
ALTER TABLE llx_categorie_actioncomm ADD INDEX idx_categorie_actioncomm_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_actioncomm ADD INDEX idx_categorie_actioncomm_fk_actioncomm (fk_actioncomm);

ALTER TABLE llx_categorie_actioncomm ADD CONSTRAINT fk_categorie_actioncomm_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_actioncomm ADD CONSTRAINT fk_categorie_actioncomm_fk_actioncomm FOREIGN KEY (fk_actioncomm) REFERENCES llx_actioncomm (id);
