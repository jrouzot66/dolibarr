















CREATE TABLE llx_zapier_hook(
    rowid integer AUTO_INCREMENT PRIMARY KEY,
    entity integer DEFAULT 1 NOT NULL,
    url varchar(255),
    event varchar(255),
    module varchar(128),
    action varchar(128),
    status integer,
    date_creation datetime NOT NULL,
    fk_user integer NOT NULL,
    tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    import_key varchar(14)
) ENGINE=innodb;
