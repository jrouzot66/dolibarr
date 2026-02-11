




















ALTER TABLE llx_supplier_proposaldet ADD INDEX idx_supplier_proposaldet_fk_supplier_proposal (fk_supplier_proposal);
ALTER TABLE llx_supplier_proposaldet ADD INDEX idx_supplier_proposaldet_fk_product (fk_product);

ALTER TABLE llx_supplier_proposaldet ADD CONSTRAINT fk_supplier_proposaldet_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
ALTER TABLE llx_supplier_proposaldet ADD CONSTRAINT fk_supplier_proposaldet_fk_supplier_proposal FOREIGN KEY (fk_supplier_proposal) REFERENCES llx_supplier_proposal (rowid);
