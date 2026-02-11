


















ALTER TABLE llx_socpeople ADD INDEX idx_socpeople_fk_soc (fk_soc);
ALTER TABLE llx_socpeople ADD INDEX idx_socpeople_fk_user_creat (fk_user_creat);

ALTER TABLE llx_socpeople ADD INDEX idx_socpeople_lastname (lastname);

ALTER TABLE llx_socpeople ADD CONSTRAINT fk_socpeople_fk_soc    FOREIGN KEY (fk_soc)     REFERENCES llx_societe (rowid);
ALTER TABLE llx_socpeople ADD CONSTRAINT fk_socpeople_user_creat_user_rowid FOREIGN KEY (fk_user_creat) REFERENCES llx_user (rowid);
