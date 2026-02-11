

















ALTER TABLE llx_commande_fournisseur_dispatch ADD INDEX idx_commande_fournisseur_dispatch_fk_commande (fk_commande);
ALTER TABLE llx_commande_fournisseur_dispatch ADD INDEX idx_commande_fournisseur_dispatch_fk_reception (fk_reception);
ALTER TABLE llx_commande_fournisseur_dispatch ADD CONSTRAINT fk_commande_fournisseur_dispatch_fk_reception FOREIGN KEY (fk_reception) REFERENCES llx_reception (rowid);
ALTER TABLE llx_commande_fournisseur_dispatch ADD INDEX idx_commande_fournisseur_dispatch_fk_product (fk_product);
ALTER TABLE llx_commande_fournisseur_dispatch ADD INDEX idx_commande_fournisseur_dispatch_fk_commandefourndet (fk_commandefourndet);
