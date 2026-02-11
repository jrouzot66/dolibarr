
create table llx_c_shipment_package_type
(
    rowid        integer  AUTO_INCREMENT PRIMARY KEY,
    label        varchar(128) NOT NULL,  
    description	 varchar(255), 
    active       integer DEFAULT 1 NOT NULL, 
    entity       integer DEFAULT 1 NOT NULL 
)ENGINE=innodb;
