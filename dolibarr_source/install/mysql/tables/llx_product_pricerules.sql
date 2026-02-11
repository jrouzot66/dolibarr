




















CREATE TABLE llx_product_pricerules
(
    rowid INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    level INTEGER NOT NULL, 
    fk_level INTEGER NOT NULL, 
    var_percent REAL NOT NULL, 
    var_min_percent REAL NOT NULL 
)ENGINE=innodb;
