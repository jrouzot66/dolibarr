


















ALTER TABLE llx_projet_task ADD UNIQUE INDEX uk_projet_task_ref (ref, entity);

ALTER TABLE llx_projet_task ADD INDEX idx_projet_task_fk_projet (fk_projet);
ALTER TABLE llx_projet_task ADD INDEX idx_projet_task_fk_user_creat (fk_user_creat);
ALTER TABLE llx_projet_task ADD INDEX idx_projet_task_fk_user_valid (fk_user_valid);

ALTER TABLE llx_projet_task ADD CONSTRAINT fk_projet_task_fk_projet 	FOREIGN KEY (fk_projet) REFERENCES llx_projet (rowid);
ALTER TABLE llx_projet_task ADD CONSTRAINT fk_projet_task_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user (rowid);
ALTER TABLE llx_projet_task ADD CONSTRAINT fk_projet_task_fk_user_valid FOREIGN KEY (fk_user_valid) REFERENCES llx_user (rowid);
