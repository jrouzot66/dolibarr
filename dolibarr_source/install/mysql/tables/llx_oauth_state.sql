



















CREATE TABLE llx_oauth_state (
    rowid integer AUTO_INCREMENT PRIMARY KEY,
    service varchar(36),
    state varchar(128),
    fk_user integer,
    fk_adherent integer,
    entity integer DEFAULT 1
)ENGINE=innodb;
