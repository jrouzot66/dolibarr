



















ALTER TABLE llx_accounting_account ADD INDEX idx_accounting_account_fk_pcg_version (fk_pcg_version);
ALTER TABLE llx_accounting_account ADD INDEX idx_accounting_account_account_parent (account_parent);

ALTER TABLE llx_accounting_account ADD UNIQUE INDEX uk_accounting_account (account_number, entity, fk_pcg_version);



