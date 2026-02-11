






















CREATE TABLE llx_asset_model(
    rowid					integer			AUTO_INCREMENT PRIMARY KEY NOT NULL,
    entity					integer			DEFAULT 1 NOT NULL,  
    ref						varchar(128)	NOT NULL,
    label					varchar(255)	NOT NULL,
    asset_type				smallint		NOT NULL,
    fk_pays                 integer         DEFAULT 0,
    note_public				text,
    note_private			text,
    date_creation			datetime		NOT NULL,
    tms                     timestamp       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    fk_user_creat			integer			NOT NULL,
    fk_user_modif			integer,
    import_key				varchar(14),
    status					smallint		NOT NULL
) ENGINE=innodb;
