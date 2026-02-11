















ALTER TABLE llx_ticket ADD UNIQUE uk_ticket_track_id (track_id);
ALTER TABLE llx_ticket ADD UNIQUE uk_ticket_ref (ref, entity);
ALTER TABLE llx_ticket ADD INDEX idx_ticket_entity (entity);
ALTER TABLE llx_ticket ADD INDEX idx_ticket_fk_soc (fk_soc);
ALTER TABLE llx_ticket ADD INDEX idx_ticket_fk_user_assign (fk_user_assign);
ALTER TABLE llx_ticket ADD INDEX idx_ticket_fk_project (fk_project);
ALTER TABLE llx_ticket ADD INDEX idx_ticket_fk_statut (fk_statut);





