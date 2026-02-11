


















ALTER TABLE llx_bank_url ADD UNIQUE INDEX uk_bank_url (fk_bank, url_id, type);

ALTER TABLE llx_bank_url ADD INDEX idx_bank_url_url_id (url_id);

