



















ALTER TABLE llx_categorie_product ADD PRIMARY KEY pk_categorie_product (fk_categorie, fk_product);
ALTER TABLE llx_categorie_product ADD INDEX idx_categorie_product_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_product ADD INDEX idx_categorie_product_fk_product (fk_product);

ALTER TABLE llx_categorie_product ADD CONSTRAINT fk_categorie_product_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_product ADD CONSTRAINT fk_categorie_product_product_rowid   FOREIGN KEY (fk_product) REFERENCES llx_product (rowid);
