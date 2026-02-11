


















ALTER TABLE llx_categorie_warehouse ADD PRIMARY KEY pk_categorie_warehouse (fk_categorie, fk_warehouse);
ALTER TABLE llx_categorie_warehouse ADD INDEX idx_categorie_warehouse_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_warehouse ADD INDEX idx_categorie_warehouse_fk_warehouse (fk_warehouse);

ALTER TABLE llx_categorie_warehouse ADD CONSTRAINT fk_categorie_warehouse_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_warehouse ADD CONSTRAINT fk_categorie_warehouse_fk_warehouse_rowid FOREIGN KEY (fk_warehouse) REFERENCES llx_entrepot (rowid);
