
















ALTER TABLE llx_bom_bom ADD INDEX idx_bom_bom_rowid (rowid);
ALTER TABLE llx_bom_bom ADD INDEX idx_bom_bom_ref (ref);
ALTER TABLE llx_bom_bom ADD CONSTRAINT llx_bom_bom_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_bom_bom ADD INDEX idx_bom_bom_status (status);
ALTER TABLE llx_bom_bom ADD INDEX idx_bom_bom_fk_product (fk_product);


ALTER TABLE llx_bom_bom ADD UNIQUE INDEX uk_bom_bom_ref(ref, entity);



