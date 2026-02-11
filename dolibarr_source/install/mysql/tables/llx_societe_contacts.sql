




















create table llx_societe_contacts
(
    rowid           integer AUTO_INCREMENT PRIMARY KEY,
    entity          integer DEFAULT 1 NOT NULL,
    date_creation           datetime NOT NULL,
    fk_soc		        integer NOT NULL,
    fk_c_type_contact	int NOT NULL,
    fk_socpeople        integer NOT NULL,
    tms TIMESTAMP,
    import_key VARCHAR(14)
)ENGINE=innodb;
