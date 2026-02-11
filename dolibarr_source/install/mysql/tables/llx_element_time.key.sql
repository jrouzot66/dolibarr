


















ALTER TABLE llx_element_time ADD INDEX idx_element_time_task (fk_element);
ALTER TABLE llx_element_time ADD INDEX idx_element_time_date (element_date);
ALTER TABLE llx_element_time ADD INDEX idx_element_time_datehour (element_datehour);

