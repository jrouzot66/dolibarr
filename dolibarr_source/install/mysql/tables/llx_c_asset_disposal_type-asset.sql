


















CREATE TABLE llx_c_asset_disposal_type
(
    rowid    integer            AUTO_INCREMENT PRIMARY KEY,
    entity 	 integer            NOT NULL DEFAULT 1,
    code     varchar(16)        NOT NULL,
    label    varchar(50)        NOT NULL,
    active   integer            DEFAULT 1 NOT NULL
)ENGINE=innodb;
