


















ALTER TABLE llx_inventorydet ADD INDEX idx_inventorydet_tms (tms);
ALTER TABLE llx_inventorydet ADD INDEX idx_inventorydet_datec (datec);
ALTER TABLE llx_inventorydet ADD INDEX idx_inventorydet_fk_inventory (fk_inventory);

ALTER TABLE llx_inventorydet ADD UNIQUE uk_inventorydet(fk_inventory, fk_warehouse, fk_product, batch);

