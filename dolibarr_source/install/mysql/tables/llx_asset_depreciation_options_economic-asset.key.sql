
















ALTER TABLE llx_asset_depreciation_options_economic ADD INDEX idx_asset_doe_rowid (rowid);
ALTER TABLE llx_asset_depreciation_options_economic ADD UNIQUE uk_asset_doe_fk_asset (fk_asset);
ALTER TABLE llx_asset_depreciation_options_economic ADD UNIQUE uk_asset_doe_fk_asset_model (fk_asset_model);

ALTER TABLE llx_asset_depreciation_options_economic ADD CONSTRAINT fk_asset_doe_asset		FOREIGN KEY (fk_asset)			REFERENCES llx_asset (rowid);
ALTER TABLE llx_asset_depreciation_options_economic ADD CONSTRAINT fk_asset_doe_asset_model	FOREIGN KEY (fk_asset_model)	REFERENCES llx_asset_model (rowid);
ALTER TABLE llx_asset_depreciation_options_economic ADD CONSTRAINT fk_asset_doe_user_modif	FOREIGN KEY (fk_user_modif)		REFERENCES llx_user (rowid);
