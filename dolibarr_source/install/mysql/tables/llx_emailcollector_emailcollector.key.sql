
















ALTER TABLE llx_emailcollector_emailcollector ADD INDEX idx_emailcollector_entity (entity);
ALTER TABLE llx_emailcollector_emailcollector ADD INDEX idx_emailcollector_status (status);


ALTER TABLE llx_emailcollector_emailcollector ADD UNIQUE INDEX uk_emailcollector_emailcollector_ref(ref, entity);

