
















ALTER TABLE llx_actioncomm_reminder ADD INDEX idx_actioncomm_reminder_dateremind (dateremind);
ALTER TABLE llx_actioncomm_reminder ADD INDEX idx_actioncomm_reminder_fk_user (fk_user);
ALTER TABLE llx_actioncomm_reminder ADD INDEX idx_actioncomm_reminder_status (status);


ALTER TABLE llx_actioncomm_reminder ADD UNIQUE INDEX uk_actioncomm_reminder_unique(fk_actioncomm, fk_user, typeremind, offsetvalue, offsetunit);


