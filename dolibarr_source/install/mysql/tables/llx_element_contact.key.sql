



















ALTER TABLE llx_element_contact ADD UNIQUE INDEX idx_element_contact_idx1 (element_id, fk_c_type_contact, fk_socpeople);
	
ALTER TABLE llx_element_contact ADD CONSTRAINT fk_element_contact_fk_c_type_contact FOREIGN KEY (fk_c_type_contact)     REFERENCES llx_c_type_contact(rowid);
	
ALTER TABLE llx_element_contact ADD INDEX idx_element_contact_fk_socpeople (fk_socpeople);

