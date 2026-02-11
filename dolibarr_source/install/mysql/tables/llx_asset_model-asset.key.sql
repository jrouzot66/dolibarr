
















ALTER TABLE llx_asset_model ADD INDEX idx_asset_model_rowid (rowid);
ALTER TABLE llx_asset_model ADD INDEX idx_asset_model_entity (entity);
ALTER TABLE llx_asset_model ADD INDEX idx_asset_model_ref (ref);
ALTER TABLE llx_asset_model ADD INDEX idx_asset_model_pays (fk_pays);
ALTER TABLE llx_asset_model ADD UNIQUE INDEX uk_asset_model (entity, ref);

ALTER TABLE llx_asset_model ADD CONSTRAINT fk_asset_model_user_creat	FOREIGN KEY (fk_user_creat)		REFERENCES llx_user (rowid);
ALTER TABLE llx_asset_model ADD CONSTRAINT fk_asset_model_user_modif	FOREIGN KEY (fk_user_modif)		REFERENCES llx_user (rowid);
