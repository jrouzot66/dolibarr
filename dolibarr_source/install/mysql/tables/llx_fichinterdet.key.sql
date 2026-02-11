


















ALTER TABLE llx_fichinterdet ADD INDEX idx_fichinterdet_fk_fichinter (fk_fichinter);
ALTER TABLE llx_fichinterdet ADD CONSTRAINT fk_fichinterdet_fk_fichinter FOREIGN KEY (fk_fichinter) REFERENCES llx_fichinter (rowid);
