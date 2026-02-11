


















ALTER TABLE llx_societe_rib ADD UNIQUE INDEX uk_societe_rib(label, fk_soc);

ALTER TABLE llx_societe_rib ADD CONSTRAINT llx_societe_rib_fk_societe FOREIGN KEY (fk_soc) REFERENCES llx_societe(rowid);
