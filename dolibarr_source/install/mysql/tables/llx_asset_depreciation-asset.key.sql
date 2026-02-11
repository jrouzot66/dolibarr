
















ALTER TABLE llx_asset_depreciation ADD INDEX idx_asset_depreciation_rowid (rowid);
ALTER TABLE llx_asset_depreciation ADD INDEX idx_asset_depreciation_fk_asset (fk_asset);
ALTER TABLE llx_asset_depreciation ADD INDEX idx_asset_depreciation_depreciation_mode (depreciation_mode);
ALTER TABLE llx_asset_depreciation ADD INDEX idx_asset_depreciation_ref (ref);
ALTER TABLE llx_asset_depreciation ADD UNIQUE uk_asset_depreciation_fk_asset (fk_asset, depreciation_mode, ref);

ALTER TABLE llx_asset_depreciation ADD CONSTRAINT fk_asset_depreciation_asset		FOREIGN KEY (fk_asset)			REFERENCES llx_asset (rowid);
ALTER TABLE llx_asset_depreciation ADD CONSTRAINT fk_asset_depreciation_user_modif	FOREIGN KEY (fk_user_modif)		REFERENCES llx_user (rowid);
