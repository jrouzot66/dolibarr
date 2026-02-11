
















ALTER TABLE llx_recruitment_recruitmentcandidature ADD INDEX idx_recruitment_recruitmentcandidature_rowid (rowid);
ALTER TABLE llx_recruitment_recruitmentcandidature ADD INDEX idx_recruitment_recruitmentcandidature_ref (ref);
ALTER TABLE llx_recruitment_recruitmentcandidature ADD CONSTRAINT llx_recruitment_recruitmentcandidature_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_recruitment_recruitmentcandidature ADD INDEX idx_recruitment_recruitmentcandidature_status (status);


ALTER TABLE llx_recruitment_recruitmentcandidature ADD UNIQUE INDEX uk_recruitmentcandidature_email_msgid(email_msgid);



