
















ALTER TABLE llx_facture_fourn_det_rec ADD CONSTRAINT fk_facture_fourn_det_rec_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
