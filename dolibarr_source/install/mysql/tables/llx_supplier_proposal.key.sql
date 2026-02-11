


















ALTER TABLE llx_supplier_proposal ADD UNIQUE INDEX uk_supplier_proposal_ref (ref, entity);

ALTER TABLE llx_supplier_proposal ADD INDEX idx_supplier_proposal_fk_soc (fk_soc);
ALTER TABLE llx_supplier_proposal ADD INDEX idx_supplier_proposal_fk_user_author (fk_user_author);
ALTER TABLE llx_supplier_proposal ADD INDEX idx_supplier_proposal_fk_user_valid (fk_user_valid);
ALTER TABLE llx_supplier_proposal ADD INDEX idx_supplier_proposal_fk_projet (fk_projet);
ALTER TABLE llx_supplier_proposal ADD INDEX idx_supplier_proposal_fk_account(fk_account);








