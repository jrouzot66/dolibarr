

















ALTER TABLE llx_expeditiondet_batch ADD INDEX idx_fk_expeditiondet (fk_expeditiondet);
ALTER TABLE llx_expeditiondet_batch ADD CONSTRAINT fk_expeditiondet_batch_fk_expeditiondet FOREIGN KEY (fk_expeditiondet) REFERENCES llx_expeditiondet(rowid);
