

























ALTER TABLE llx_contrat ADD UNIQUE INDEX uk_contrat_ref (ref, entity);

ALTER TABLE llx_contrat ADD INDEX idx_contrat_fk_soc (fk_soc);
ALTER TABLE llx_contrat ADD INDEX idx_contrat_fk_user_author (fk_user_author);

ALTER TABLE llx_contrat ADD CONSTRAINT fk_contrat_fk_soc FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_contrat ADD CONSTRAINT fk_contrat_user_author FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
