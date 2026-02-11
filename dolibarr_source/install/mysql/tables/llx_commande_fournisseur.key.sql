






















ALTER TABLE llx_commande_fournisseur ADD UNIQUE INDEX uk_commande_fournisseur_ref (ref, entity);

ALTER TABLE llx_commande_fournisseur ADD INDEX idx_commande_fournisseur_fk_soc (fk_soc);
ALTER TABLE llx_commande_fournisseur ADD CONSTRAINT fk_commande_fournisseur_fk_soc FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_commande_fournisseur ADD INDEX billed (billed);
