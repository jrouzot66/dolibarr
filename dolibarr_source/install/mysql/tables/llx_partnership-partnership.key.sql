


















ALTER TABLE llx_partnership ADD INDEX idx_partnership_entity (entity);
ALTER TABLE llx_partnership ADD UNIQUE INDEX uk_partnership_ref (ref, entity);

ALTER TABLE llx_partnership ADD UNIQUE INDEX uk_fk_type_fk_soc (fk_type, fk_soc, date_partnership_start);
ALTER TABLE llx_partnership ADD UNIQUE INDEX uk_fk_type_fk_member (fk_type, fk_member, date_partnership_start);
