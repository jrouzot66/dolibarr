



















ALTER TABLE llx_prelevement_lignes ADD INDEX idx_prelevement_lignes_fk_prelevement_bons (fk_prelevement_bons);


ALTER TABLE llx_prelevement_lignes ADD CONSTRAINT fk_prelevement_lignes_fk_prelevement_bons FOREIGN KEY (fk_prelevement_bons) REFERENCES llx_prelevement_bons (rowid);

