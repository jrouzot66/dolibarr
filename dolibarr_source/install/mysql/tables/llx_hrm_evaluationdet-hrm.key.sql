


















ALTER TABLE llx_hrm_evaluationdet ADD INDEX idx_hrm_evaluationdet_rowid (rowid);
ALTER TABLE llx_hrm_evaluationdet ADD CONSTRAINT llx_hrm_evaluationdet_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_hrm_evaluationdet ADD INDEX idx_hrm_evaluationdet_fk_skill (fk_skill);
ALTER TABLE llx_hrm_evaluationdet ADD INDEX idx_hrm_evaluationdet_fk_evaluation (fk_evaluation);




ALTER TABLE llx_hrm_evaluationdet ADD CONSTRAINT llx_hrm_evaluationdet_fk_evaluation FOREIGN KEY (fk_evaluation) REFERENCES llx_hrm_evaluation(rowid);

