



















CREATE TABLE llx_c_product_nature (
     rowid integer AUTO_INCREMENT PRIMARY KEY,
     code tinyint NOT NULL,
     label varchar(128),
     active tinyint DEFAULT 1  NOT NULL
) ENGINE=innodb;
