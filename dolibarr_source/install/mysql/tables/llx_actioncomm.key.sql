


















ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_fk_soc (fk_soc);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_fk_contact (fk_contact);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_code (code);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_fk_element (fk_element);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_fk_user_action (fk_user_action);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_fk_project (fk_project);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_datep (datep);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_datep2 (datep2);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_recurid (recurid);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_ref_ext (ref_ext);
ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_percent (percent);

ALTER TABLE llx_actioncomm ADD INDEX idx_actioncomm_ref (ref, entity);


