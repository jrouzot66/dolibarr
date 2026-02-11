



















ALTER TABLE llx_bank_account ADD UNIQUE uk_bank_account_label (label,entity);
ALTER TABLE llx_bank_account ADD INDEX idx_fk_accountancy_journal (fk_accountancy_journal);

ALTER TABLE llx_bank_account ADD CONSTRAINT fk_bank_account_accountancy_journal FOREIGN KEY (fk_accountancy_journal) REFERENCES llx_accounting_journal (rowid);
