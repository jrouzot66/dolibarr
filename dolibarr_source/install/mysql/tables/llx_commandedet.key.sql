





















ALTER TABLE llx_commandedet ADD INDEX idx_commandedet_fk_commande (fk_commande);
ALTER TABLE llx_commandedet ADD INDEX idx_commandedet_fk_product (fk_product);

ALTER TABLE llx_commandedet ADD CONSTRAINT fk_commandedet_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
ALTER TABLE llx_commandedet ADD CONSTRAINT fk_commandedet_fk_commande FOREIGN KEY (fk_commande) REFERENCES llx_commande (rowid);
ALTER TABLE llx_commandedet ADD CONSTRAINT fk_commandedet_fk_commandefourndet FOREIGN KEY (fk_commandefourndet) REFERENCES llx_commande_fournisseurdet (rowid);




