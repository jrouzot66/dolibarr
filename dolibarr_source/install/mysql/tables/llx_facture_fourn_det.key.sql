





















ALTER TABLE llx_facture_fourn_det ADD INDEX idx_facture_fourn_det_fk_facture (fk_facture_fourn);
ALTER TABLE llx_facture_fourn_det ADD INDEX idx_facture_fourn_det_fk_product (fk_product);
ALTER TABLE llx_facture_fourn_det ADD INDEX idx_facture_fourn_det_fk_code_ventilation (fk_code_ventilation);
ALTER TABLE llx_facture_fourn_det ADD UNIQUE INDEX uk_fk_remise_except (fk_remise_except, fk_facture_fourn);

ALTER TABLE llx_facture_fourn_det ADD CONSTRAINT fk_facture_fourn_det_fk_facture FOREIGN KEY (fk_facture_fourn) REFERENCES llx_facture_fourn (rowid);
ALTER TABLE llx_facture_fourn_det ADD CONSTRAINT fk_facture_fourn_det_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
