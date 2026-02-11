
















ALTER TABLE llx_emailcollector_emailcollectoraction ADD INDEX idx_emailcollector_fk_emailcollector (fk_emailcollector);
ALTER TABLE llx_emailcollector_emailcollectoraction ADD CONSTRAINT fk_emailcollectoraction_fk_emailcollector FOREIGN KEY (fk_emailcollector) REFERENCES llx_emailcollector_emailcollector(rowid);


ALTER TABLE llx_emailcollector_emailcollectoraction ADD UNIQUE INDEX uk_emailcollector_emailcollectoraction (fk_emailcollector, type);
