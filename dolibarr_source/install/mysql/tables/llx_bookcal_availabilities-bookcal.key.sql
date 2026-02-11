
















ALTER TABLE llx_bookcal_availabilities ADD INDEX idx_bookcal_availabilities_rowid (rowid);
ALTER TABLE llx_bookcal_availabilities ADD INDEX idx_bookcal_availabilities_ref (ref);
ALTER TABLE llx_bookcal_availabilities ADD CONSTRAINT llx_bookcal_availabilities_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_bookcal_availabilities ADD INDEX idx_bookcal_availabilities_status (status);
ALTER TABLE llx_bookcal_availabilities ADD INDEX idx_bookcal_availabilities_type (type);
ALTER TABLE llx_bookcal_availabilities ADD CONSTRAINT llx_bookcal_availabilities_fk_bookcal_calendar FOREIGN KEY (fk_bookcal_calendar) REFERENCES llx_bookcal_calendar(rowid);







