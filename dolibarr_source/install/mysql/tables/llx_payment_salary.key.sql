


















ALTER TABLE llx_payment_salary ADD INDEX idx_payment_salary_ref (num_payment);
ALTER TABLE llx_payment_salary ADD INDEX idx_payment_salary_user (fk_user, entity);
ALTER TABLE llx_payment_salary ADD INDEX idx_payment_salary_datep (datep);
ALTER TABLE llx_payment_salary ADD INDEX idx_payment_salary_datesp (datesp);
ALTER TABLE llx_payment_salary ADD INDEX idx_payment_salary_dateep (dateep);

ALTER TABLE llx_payment_salary ADD CONSTRAINT fk_payment_salary_user FOREIGN KEY (fk_user) REFERENCES llx_user (rowid);
