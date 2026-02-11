

















ALTER TABLE llx_contratdet_log ADD INDEX idx_contratdet_log_fk_contratdet (fk_contratdet);
ALTER TABLE llx_contratdet_log ADD INDEX idx_contratdet_log_date (date);

ALTER TABLE llx_contratdet_log ADD CONSTRAINT fk_contratdet_log_fk_contratdet FOREIGN KEY (fk_contratdet) REFERENCES llx_contratdet (rowid);
