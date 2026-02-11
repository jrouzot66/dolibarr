


















ALTER TABLE llx_holiday ADD INDEX idx_holiday_entity (entity);
ALTER TABLE llx_holiday ADD INDEX idx_holiday_fk_user (fk_user);
ALTER TABLE llx_holiday ADD INDEX idx_holiday_fk_user_create (fk_user_create);
ALTER TABLE llx_holiday ADD INDEX idx_holiday_date_create (date_create);
ALTER TABLE llx_holiday ADD INDEX idx_holiday_date_debut (date_debut);
ALTER TABLE llx_holiday ADD INDEX idx_holiday_date_fin (date_fin);
ALTER TABLE llx_holiday ADD INDEX idx_holiday_fk_validator (fk_validator);
