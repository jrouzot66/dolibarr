



















ALTER TABLE llx_actioncomm_resources ADD UNIQUE INDEX uk_actioncomm_resources(fk_actioncomm, element_type, fk_element);
ALTER TABLE llx_actioncomm_resources ADD INDEX idx_actioncomm_resources_fk_element (fk_element);


	
