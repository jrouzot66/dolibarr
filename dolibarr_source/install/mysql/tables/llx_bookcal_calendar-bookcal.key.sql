
















ALTER TABLE llx_bookcal_calendar ADD INDEX idx_bookcal_calendar_rowid (rowid);
ALTER TABLE llx_bookcal_calendar ADD INDEX idx_bookcal_calendar_ref (ref);
ALTER TABLE llx_bookcal_calendar ADD INDEX idx_bookcal_calendar_fk_soc (fk_soc);
ALTER TABLE llx_bookcal_calendar ADD INDEX idx_bookcal_calendar_fk_project (fk_project);
ALTER TABLE llx_bookcal_calendar ADD CONSTRAINT llx_bookcal_calendar_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_bookcal_calendar ADD INDEX idx_bookcal_calendar_status (status);






