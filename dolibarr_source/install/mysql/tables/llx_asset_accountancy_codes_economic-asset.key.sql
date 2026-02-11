
















ALTER TABLE llx_asset_accountancy_codes_economic ADD INDEX idx_asset_ace_rowid (rowid);
ALTER TABLE llx_asset_accountancy_codes_economic ADD UNIQUE uk_asset_ace_fk_asset (fk_asset);
ALTER TABLE llx_asset_accountancy_codes_economic ADD UNIQUE uk_asset_ace_fk_asset_model (fk_asset_model);

ALTER TABLE llx_asset_accountancy_codes_economic ADD CONSTRAINT fk_asset_ace_asset			FOREIGN KEY (fk_asset)			REFERENCES llx_asset (rowid);
ALTER TABLE llx_asset_accountancy_codes_economic ADD CONSTRAINT fk_asset_ace_asset_model	FOREIGN KEY (fk_asset_model)	REFERENCES llx_asset_model (rowid);
ALTER TABLE llx_asset_accountancy_codes_economic ADD CONSTRAINT fk_asset_ace_user_modif		FOREIGN KEY (fk_user_modif)		REFERENCES llx_user (rowid);
