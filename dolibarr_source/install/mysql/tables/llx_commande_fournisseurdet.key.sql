

















ALTER TABLE llx_commande_fournisseurdet ADD CONSTRAINT fk_commande_fournisseurdet_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);

ALTER TABLE llx_commande_fournisseurdet ADD INDEX idx_commande_fournisseurdet_fk_commande (fk_commande);
ALTER TABLE llx_commande_fournisseurdet ADD INDEX idx_commande_fournisseurdet_fk_product (fk_product);
