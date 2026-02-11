


















ALTER TABLE llx_facture_fourn ADD UNIQUE INDEX uk_facture_fourn_ref (ref, entity);
ALTER TABLE llx_facture_fourn ADD UNIQUE INDEX uk_facture_fourn_ref_supplier (ref_supplier, fk_soc, entity);

ALTER TABLE llx_facture_fourn ADD INDEX idx_facture_fourn_date_lim_reglement (date_lim_reglement);

ALTER TABLE llx_facture_fourn ADD INDEX idx_facture_fourn_fk_soc (fk_soc);
ALTER TABLE llx_facture_fourn ADD INDEX idx_facture_fourn_fk_user_author (fk_user_author);
ALTER TABLE llx_facture_fourn ADD INDEX idx_facture_fourn_fk_user_valid (fk_user_valid);
ALTER TABLE llx_facture_fourn ADD INDEX idx_facture_fourn_fk_projet (fk_projet);

ALTER TABLE llx_facture_fourn ADD CONSTRAINT fk_facture_fourn_fk_soc            FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_facture_fourn ADD CONSTRAINT fk_facture_fourn_fk_user_author    FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
ALTER TABLE llx_facture_fourn ADD CONSTRAINT fk_facture_fourn_fk_user_valid     FOREIGN KEY (fk_user_valid) REFERENCES llx_user (rowid);
ALTER TABLE llx_facture_fourn ADD CONSTRAINT fk_facture_fourn_fk_projet         FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);
