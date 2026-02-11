


















ALTER TABLE llx_hrm_skill ADD INDEX idx_hrm_skill_rowid (rowid);
ALTER TABLE llx_hrm_skill ADD CONSTRAINT llx_hrm_skill_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_hrm_skill ADD INDEX idx_hrm_skill_skill_type (skill_type);






