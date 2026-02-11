















CREATE TABLE llx_takepos_floor_tables(
    
    rowid integer AUTO_INCREMENT PRIMARY KEY,
    entity integer DEFAULT 1 NOT NULL,
    label varchar(255),
    leftpos float,
    toppos float,
    floor smallint
    
) ENGINE=innodb;
