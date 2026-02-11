

















CREATE TABLE llx_comment (
    rowid integer AUTO_INCREMENT PRIMARY KEY,
    datec datetime  DEFAULT NULL,
    tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    description text NOT NULL,
    fk_user_author integer DEFAULT NULL,
    fk_user_modif integer DEFAULT NULL,
    fk_element integer DEFAULT NULL,
    element_type varchar(50) DEFAULT NULL,
    entity integer DEFAULT 1,
    import_key varchar(125) DEFAULT NULL
)ENGINE=innodb;

