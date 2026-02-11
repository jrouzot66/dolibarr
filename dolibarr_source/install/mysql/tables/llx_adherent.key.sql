



















ALTER TABLE llx_adherent ADD UNIQUE INDEX uk_adherent_login (login, entity);
ALTER TABLE llx_adherent ADD UNIQUE INDEX uk_adherent_ref (ref, entity);
ALTER TABLE llx_adherent ADD UNIQUE INDEX uk_adherent_fk_soc (fk_soc);

ALTER TABLE llx_adherent ADD INDEX idx_adherent_fk_adherent_type (fk_adherent_type);

ALTER TABLE llx_adherent ADD CONSTRAINT adherent_fk_soc FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_adherent ADD CONSTRAINT fk_adherent_adherent_type FOREIGN KEY (fk_adherent_type)    REFERENCES llx_adherent_type (rowid);
