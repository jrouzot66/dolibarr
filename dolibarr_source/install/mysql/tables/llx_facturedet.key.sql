























ALTER TABLE llx_facturedet ADD INDEX idx_facturedet_fk_facture (fk_facture);
ALTER TABLE llx_facturedet ADD INDEX idx_facturedet_fk_product (fk_product);
ALTER TABLE llx_facturedet ADD INDEX idx_facturedet_fk_code_ventilation (fk_code_ventilation);

ALTER TABLE llx_facturedet ADD UNIQUE INDEX uk_fk_remise_except (fk_remise_except, fk_facture);
ALTER TABLE llx_facturedet ADD CONSTRAINT fk_facturedet_fk_facture FOREIGN KEY (fk_facture) REFERENCES llx_facture (rowid);
ALTER TABLE llx_facturedet ADD CONSTRAINT fk_facturedet_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
