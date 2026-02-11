
















ALTER TABLE llx_webhook_target ADD INDEX idx_webhook_target_rowid (rowid);
ALTER TABLE llx_webhook_target ADD INDEX idx_webhook_target_ref (ref);
ALTER TABLE llx_webhook_target ADD CONSTRAINT llx_webhook_target_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_webhook_target ADD INDEX idx_webhook_target_status (status);






