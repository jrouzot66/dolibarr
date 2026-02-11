






















ALTER TABLE llx_paiement_facture ADD INDEX idx_paiement_facture_fk_facture (fk_facture);
ALTER TABLE llx_paiement_facture ADD CONSTRAINT fk_paiement_facture_fk_facture FOREIGN KEY (fk_facture) REFERENCES llx_facture (rowid);

ALTER TABLE llx_paiement_facture ADD INDEX idx_paiement_facture_fk_paiement (fk_paiement);
ALTER TABLE llx_paiement_facture ADD CONSTRAINT fk_paiement_facture_fk_paiement FOREIGN KEY (fk_paiement) REFERENCES llx_paiement (rowid);


ALTER TABLE llx_paiement_facture ADD UNIQUE INDEX uk_paiement_facture(fk_paiement, fk_facture);

