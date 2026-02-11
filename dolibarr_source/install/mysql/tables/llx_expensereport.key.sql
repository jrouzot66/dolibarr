



















ALTER TABLE llx_expensereport ADD UNIQUE INDEX idx_expensereport_uk_ref (ref, entity);

ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_date_debut (date_debut);
ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_date_fin (date_fin);
ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_fk_statut (fk_statut);

ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_fk_user_author (fk_user_author);
ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_fk_user_valid (fk_user_valid);
ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_fk_user_approve (fk_user_approve);
ALTER TABLE llx_expensereport ADD INDEX idx_expensereport_fk_refuse (fk_user_refuse);





