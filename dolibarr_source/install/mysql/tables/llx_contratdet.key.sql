




















ALTER TABLE llx_contratdet ADD INDEX idx_contratdet_fk_contrat (fk_contrat);
ALTER TABLE llx_contratdet ADD INDEX idx_contratdet_fk_product (fk_product);
ALTER TABLE llx_contratdet ADD INDEX idx_contratdet_date_ouverture_prevue (date_ouverture_prevue);
ALTER TABLE llx_contratdet ADD INDEX idx_contratdet_date_ouverture (date_ouverture);
ALTER TABLE llx_contratdet ADD INDEX idx_contratdet_date_fin_validite (date_fin_validite);
ALTER TABLE llx_contratdet ADD INDEX idx_contratdet_statut (statut);

ALTER TABLE llx_contratdet ADD CONSTRAINT fk_contratdet_fk_contrat FOREIGN KEY (fk_contrat) REFERENCES llx_contrat (rowid);
ALTER TABLE llx_contratdet ADD CONSTRAINT fk_contratdet_fk_product FOREIGN KEY (fk_product) REFERENCES llx_product (rowid);

ALTER TABLE llx_contratdet ADD CONSTRAINT fk_contratdet_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
