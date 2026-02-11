


















ALTER TABLE llx_inventory ADD UNIQUE INDEX uk_inventory_ref (ref, entity);

ALTER TABLE llx_inventory ADD INDEX idx_inventory_tms (tms);
ALTER TABLE llx_inventory ADD INDEX idx_inventory_date_creation (date_creation);
