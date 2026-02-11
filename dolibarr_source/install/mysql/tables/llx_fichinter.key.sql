


















ALTER TABLE llx_fichinter ADD UNIQUE INDEX uk_fichinter_ref (ref, entity);

ALTER TABLE llx_fichinter ADD INDEX idx_fichinter_fk_soc (fk_soc);
ALTER TABLE llx_fichinter ADD CONSTRAINT fk_fichinter_fk_soc FOREIGN KEY (fk_soc)  REFERENCES llx_societe (rowid);
