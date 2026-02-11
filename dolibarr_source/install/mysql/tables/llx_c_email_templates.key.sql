


















ALTER TABLE llx_c_email_templates ADD UNIQUE INDEX uk_c_email_templates(entity, label, lang);
ALTER TABLE llx_c_email_templates ADD INDEX idx_type(type_template);

