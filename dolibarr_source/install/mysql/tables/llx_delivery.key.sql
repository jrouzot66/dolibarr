



















ALTER TABLE llx_delivery ADD UNIQUE INDEX idx_delivery_uk_ref (ref, entity);

ALTER TABLE llx_delivery ADD INDEX idx_delivery_fk_soc (fk_soc);
ALTER TABLE llx_delivery ADD INDEX idx_delivery_fk_user_author (fk_user_author);
ALTER TABLE llx_delivery ADD INDEX idx_delivery_fk_user_valid (fk_user_valid);

ALTER TABLE llx_delivery ADD CONSTRAINT fk_delivery_fk_soc			FOREIGN KEY (fk_soc)			REFERENCES llx_societe (rowid);
ALTER TABLE llx_delivery ADD CONSTRAINT fk_delivery_fk_user_author	FOREIGN KEY (fk_user_author)	REFERENCES llx_user (rowid);
ALTER TABLE llx_delivery ADD CONSTRAINT fk_delivery_fk_user_valid	FOREIGN KEY (fk_user_valid)	REFERENCES llx_user (rowid);
