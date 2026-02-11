

















ALTER TABLE llx_cronjob ADD INDEX idx_cronjob_status (status);
ALTER TABLE llx_cronjob ADD INDEX idx_cronjob_datelastrun (datelastrun);
ALTER TABLE llx_cronjob ADD INDEX idx_cronjob_datenextrun (datenextrun);
ALTER TABLE llx_cronjob ADD INDEX idx_cronjob_datestart (datestart);
ALTER TABLE llx_cronjob ADD INDEX idx_cronjob_dateend (dateend);

ALTER TABLE llx_cronjob ADD UNIQUE INDEX uk_cronjob (label, entity);
