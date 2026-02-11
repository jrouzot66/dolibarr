


















ALTER TABLE llx_element_categorie ADD UNIQUE INDEX idx_element_categorie_idx (fk_element, fk_categorie);

ALTER TABLE llx_element_categorie ADD CONSTRAINT fk_element_categorie_fk_categorie FOREIGN KEY (fk_categorie) REFERENCES llx_categorie(rowid);
