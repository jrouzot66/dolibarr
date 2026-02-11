






















ALTER TABLE llx_commande ADD UNIQUE INDEX uk_commande_ref (ref, entity);

ALTER TABLE llx_commande ADD INDEX idx_commande_fk_soc (fk_soc);
ALTER TABLE llx_commande ADD INDEX idx_commande_fk_user_author (fk_user_author);
ALTER TABLE llx_commande ADD INDEX idx_commande_fk_user_valid (fk_user_valid);
ALTER TABLE llx_commande ADD INDEX idx_commande_fk_user_cloture (fk_user_cloture);
ALTER TABLE llx_commande ADD INDEX idx_commande_fk_projet (fk_projet);
ALTER TABLE llx_commande ADD INDEX idx_commande_fk_account(fk_account);
ALTER TABLE llx_commande ADD INDEX idx_commande_fk_currency(fk_currency);

ALTER TABLE llx_commande ADD CONSTRAINT fk_commande_fk_soc			FOREIGN KEY (fk_soc) REFERENCES llx_societe (rowid);
ALTER TABLE llx_commande ADD CONSTRAINT fk_commande_fk_user_author	FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
ALTER TABLE llx_commande ADD CONSTRAINT fk_commande_fk_user_valid	FOREIGN KEY (fk_user_valid)  REFERENCES llx_user (rowid);
ALTER TABLE llx_commande ADD CONSTRAINT fk_commande_fk_user_cloture	FOREIGN KEY (fk_user_cloture) REFERENCES llx_user (rowid);
ALTER TABLE llx_commande ADD CONSTRAINT fk_commande_fk_projet		FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);
