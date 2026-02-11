


















ALTER TABLE llx_hrm_skilldet ADD INDEX idx_hrm_skilldet_rowid (rowid);
ALTER TABLE llx_hrm_skilldet ADD CONSTRAINT llx_hrm_skilldet_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);




ALTER TABLE llx_hrm_skilldet ADD CONSTRAINT llx_hrm_skilldet_fk_skill FOREIGN KEY (fk_skill) REFERENCES llx_hrm_skill(rowid);

