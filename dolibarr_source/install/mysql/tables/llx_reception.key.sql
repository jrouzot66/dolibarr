



















ALTER TABLE llx_reception ADD UNIQUE INDEX idx_reception_uk_ref (ref, entity);

ALTER TABLE llx_reception ADD INDEX idx_reception_fk_soc (fk_soc);
ALTER TABLE llx_reception ADD INDEX idx_reception_fk_user_author (fk_user_author);
ALTER TABLE llx_reception ADD INDEX idx_reception_fk_user_valid (fk_user_valid);
ALTER TABLE llx_reception ADD INDEX idx_reception_fk_shipping_method (fk_shipping_method);

ALTER TABLE llx_reception ADD CONSTRAINT fk_reception_fk_soc				FOREIGN KEY (fk_soc)			 REFERENCES llx_societe (rowid);
ALTER TABLE llx_reception ADD CONSTRAINT fk_reception_fk_user_author		FOREIGN KEY (fk_user_author)	 REFERENCES llx_user (rowid);
ALTER TABLE llx_reception ADD CONSTRAINT fk_reception_fk_user_valid 		FOREIGN KEY (fk_user_valid)		 REFERENCES llx_user (rowid);
ALTER TABLE llx_reception ADD CONSTRAINT fk_reception_fk_shipping_method 	FOREIGN KEY (fk_shipping_method) REFERENCES llx_c_shipment_mode (rowid);
