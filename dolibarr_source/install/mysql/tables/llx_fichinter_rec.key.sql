





















ALTER TABLE llx_fichinter_rec ADD UNIQUE INDEX idx_fichinter_rec_uk_titre (titre, entity);

ALTER TABLE llx_fichinter_rec ADD INDEX idx_fichinter_rec_fk_soc (fk_soc);
ALTER TABLE llx_fichinter_rec ADD INDEX idx_fichinter_rec_fk_user_author (fk_user_author);
ALTER TABLE llx_fichinter_rec ADD INDEX idx_fichinter_rec_fk_projet (fk_projet);

ALTER TABLE llx_fichinter_rec ADD CONSTRAINT fk_fichinter_rec_fk_user_author    FOREIGN KEY (fk_user_author) REFERENCES llx_user (rowid);
ALTER TABLE llx_fichinter_rec ADD CONSTRAINT fk_fichinter_rec_fk_projet         FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);
