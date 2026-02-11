




















ALTER TABLE llx_facture ADD UNIQUE INDEX uk_facture_ref (ref, entity);

ALTER TABLE llx_facture ADD INDEX idx_facture_fk_soc (fk_soc);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_user_author (fk_user_author);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_user_valid (fk_user_valid);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_facture_source (fk_facture_source);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_projet (fk_projet);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_account (fk_account);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_currency (fk_currency);
ALTER TABLE llx_facture ADD INDEX idx_facture_fk_statut (fk_statut);
ALTER TABLE llx_facture ADD INDEX idx_facture_datef (datef);

ALTER TABLE llx_facture ADD CONSTRAINT fk_facture_fk_soc            FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_facture ADD CONSTRAINT fk_facture_fk_user_author    FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
ALTER TABLE llx_facture ADD CONSTRAINT fk_facture_fk_user_valid     FOREIGN KEY (fk_user_valid)  REFERENCES llx_user (rowid);
ALTER TABLE llx_facture ADD CONSTRAINT fk_facture_fk_facture_source FOREIGN KEY (fk_facture_source) REFERENCES llx_facture (rowid);
ALTER TABLE llx_facture ADD CONSTRAINT fk_facture_fk_projet         FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);
