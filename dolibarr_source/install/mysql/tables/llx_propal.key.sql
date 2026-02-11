




















ALTER TABLE llx_propal ADD UNIQUE INDEX uk_propal_ref (ref, entity);

ALTER TABLE llx_propal ADD INDEX idx_propal_fk_soc (fk_soc);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_user_author (fk_user_author);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_user_valid (fk_user_valid);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_user_signature (fk_user_signature);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_user_cloture (fk_user_cloture);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_projet (fk_projet);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_account(fk_account);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_currency(fk_currency);
ALTER TABLE llx_propal ADD INDEX idx_propal_fk_warehouse(fk_warehouse);

ALTER TABLE llx_propal ADD CONSTRAINT fk_propal_fk_soc FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_propal ADD CONSTRAINT fk_propal_fk_user_author	FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
ALTER TABLE llx_propal ADD CONSTRAINT fk_propal_fk_user_valid	FOREIGN KEY (fk_user_valid)  REFERENCES llx_user (rowid);
ALTER TABLE llx_propal ADD CONSTRAINT fk_propal_fk_user_signature   FOREIGN KEY (fk_user_signature) REFERENCES llx_user (rowid);
ALTER TABLE llx_propal ADD CONSTRAINT fk_propal_fk_user_cloture	FOREIGN KEY (fk_user_cloture) REFERENCES llx_user (rowid);
ALTER TABLE llx_propal ADD CONSTRAINT fk_propal_fk_projet		FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);

