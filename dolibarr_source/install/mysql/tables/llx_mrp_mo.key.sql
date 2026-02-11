
















ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_ref (ref);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_entity (entity);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_fk_soc (fk_soc);
ALTER TABLE llx_mrp_mo ADD CONSTRAINT fk_mrp_mo_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_status (status);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_fk_product (fk_product);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_date_start_planned (date_start_planned);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_date_end_planned (date_end_planned);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_fk_bom (fk_bom);
ALTER TABLE llx_mrp_mo ADD INDEX idx_mrp_mo_fk_project (fk_project);






