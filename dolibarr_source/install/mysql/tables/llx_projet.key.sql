




















ALTER TABLE llx_projet ADD UNIQUE INDEX uk_projet_ref (ref, entity);

ALTER TABLE llx_projet ADD INDEX idx_projet_fk_soc (fk_soc);
ALTER TABLE llx_projet ADD INDEX idx_projet_ref (ref);
ALTER TABLE llx_projet ADD INDEX idx_projet_fk_statut (fk_statut);
ALTER TABLE llx_projet ADD INDEX idx_projet_fk_opp_status (fk_opp_status);

ALTER TABLE llx_projet ADD CONSTRAINT fk_projet_fk_soc FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
