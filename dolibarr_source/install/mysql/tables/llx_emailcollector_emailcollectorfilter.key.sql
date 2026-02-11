
















ALTER TABLE llx_emailcollector_emailcollectorfilter ADD INDEX idx_emailcollector_fk_emailcollector (fk_emailcollector);
ALTER TABLE llx_emailcollector_emailcollectorfilter ADD CONSTRAINT fk_emailcollectorfilter_fk_emailcollector FOREIGN KEY (fk_emailcollector) REFERENCES llx_emailcollector_emailcollector(rowid);


ALTER TABLE llx_emailcollector_emailcollectorfilter ADD UNIQUE INDEX uk_emailcollector_emailcollectorfilter (fk_emailcollector, type, rulevalue);

