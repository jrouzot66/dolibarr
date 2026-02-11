
















ALTER TABLE llx_recruitment_recruitmentjobposition ADD INDEX idx_recruitment_recruitmentjobposition_rowid (rowid);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD INDEX idx_recruitment_recruitmentjobposition_ref (ref);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD INDEX idx_recruitment_recruitmentjobposition_fk_soc (fk_soc);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD INDEX idx_recruitment_recruitmentjobposition_fk_project (fk_project);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD CONSTRAINT llx_recruitment_recruitmentjobposition_fk_user_recruiter FOREIGN KEY (fk_user_recruiter) REFERENCES llx_user(rowid);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD CONSTRAINT llx_recruitment_recruitmentjobposition_fk_user_supervisor FOREIGN KEY (fk_user_supervisor) REFERENCES llx_user(rowid);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD CONSTRAINT llx_recruitment_recruitmentjobposition_fk_establishment FOREIGN KEY (fk_establishment) REFERENCES llx_establishment(rowid);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD CONSTRAINT llx_recruitment_recruitmentjobposition_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_recruitment_recruitmentjobposition ADD INDEX idx_recruitment_recruitmentjobposition_status (status);






