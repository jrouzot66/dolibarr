
















ALTER TABLE llx_knowledgemanagement_knowledgerecord ADD INDEX idx_knowledgemanagement_knowledgerecord_rowid (rowid);
ALTER TABLE llx_knowledgemanagement_knowledgerecord ADD INDEX idx_knowledgemanagement_knowledgerecord_ref (ref);
ALTER TABLE llx_knowledgemanagement_knowledgerecord ADD CONSTRAINT llx_knowledgemanagement_knowledgerecord_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_knowledgemanagement_knowledgerecord ADD INDEX idx_knowledgemanagement_knowledgerecord_status (status);






