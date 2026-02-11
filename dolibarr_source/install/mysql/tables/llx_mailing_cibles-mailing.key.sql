


















ALTER TABLE llx_mailing_cibles ADD UNIQUE uk_mailing_cibles (fk_mailing, email);

ALTER TABLE llx_mailing_cibles ADD INDEX idx_mailing_cibles_email (email);

ALTER TABLE llx_mailing_cibles ADD INDEX idx_mailing_cibles_tag (tag);

