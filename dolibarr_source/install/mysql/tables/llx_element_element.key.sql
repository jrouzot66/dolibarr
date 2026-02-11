


















ALTER TABLE llx_element_element ADD UNIQUE INDEX idx_element_element_idx1 (fk_source, sourcetype, fk_target, targettype);

	
ALTER TABLE llx_element_element ADD INDEX idx_element_element_fk_target (fk_target);


