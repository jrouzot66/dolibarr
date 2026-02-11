


















ALTER TABLE llx_element_resources ADD UNIQUE INDEX idx_element_resources_idx1 (resource_id, resource_type, element_id, element_type);
ALTER TABLE llx_element_resources ADD INDEX idx_element_element_element_id (element_id);

