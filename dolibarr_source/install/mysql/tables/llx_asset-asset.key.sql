
















ALTER TABLE llx_asset ADD INDEX idx_asset_fk_asset_model (fk_asset_model);
ALTER TABLE llx_asset ADD INDEX idx_asset_fk_disposal_type (fk_disposal_type);

ALTER TABLE llx_asset ADD CONSTRAINT fk_asset_asset_model	FOREIGN KEY (fk_asset_model)	REFERENCES llx_asset_model (rowid);
ALTER TABLE llx_asset ADD CONSTRAINT fk_asset_disposal_type	FOREIGN KEY (fk_disposal_type)	REFERENCES llx_c_asset_disposal_type (rowid);
ALTER TABLE llx_asset ADD CONSTRAINT fk_asset_user_creat	FOREIGN KEY (fk_user_creat)		REFERENCES llx_user (rowid);
ALTER TABLE llx_asset ADD CONSTRAINT fk_asset_user_modif	FOREIGN KEY (fk_user_modif)		REFERENCES llx_user (rowid);
