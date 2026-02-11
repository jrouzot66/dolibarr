


















ALTER TABLE llx_c_action_trigger ADD UNIQUE INDEX uk_action_trigger_code (code);
ALTER TABLE llx_c_action_trigger ADD INDEX idx_action_trigger_rang (rang);
