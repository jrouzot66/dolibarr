














ALTER TABLE llx_mrp_production ADD CONSTRAINT fk_mrp_production_mo FOREIGN KEY (fk_mo) REFERENCES llx_mrp_mo (rowid);
ALTER TABLE llx_mrp_production ADD CONSTRAINT fk_mrp_production_product FOREIGN KEY (fk_product) REFERENCES llx_product (rowid);
ALTER TABLE llx_mrp_production ADD CONSTRAINT fk_mrp_production_stock_movement FOREIGN KEY (fk_stock_movement) REFERENCES llx_stock_mouvement (rowid);

ALTER TABLE llx_mrp_production ADD INDEX idx_mrp_production_fk_mo (fk_mo);

