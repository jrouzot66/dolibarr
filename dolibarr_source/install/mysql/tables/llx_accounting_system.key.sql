



















ALTER TABLE llx_accounting_system ADD UNIQUE INDEX uk_accounting_system_pcg_version (pcg_version);


ALTER TABLE llx_accounting_account ADD CONSTRAINT fk_accounting_account_fk_pcg_version    FOREIGN KEY (fk_pcg_version)    REFERENCES llx_accounting_system (pcg_version);
