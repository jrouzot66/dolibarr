

















ALTER TABLE llx_societe_perentity ADD INDEX idx_societe_perentity_fk_soc (fk_soc);

ALTER TABLE llx_societe_perentity ADD UNIQUE INDEX uk_societe_perentity (fk_soc, entity);
