



















CREATE TABLE IF NOT EXISTS llx_c_exp_tax_range (
    rowid       integer  AUTO_INCREMENT PRIMARY KEY,
    fk_c_exp_tax_cat integer DEFAULT 1 NOT NULL,
    range_ik    double DEFAULT 0 NOT NULL,   
    entity      integer DEFAULT 1 NOT NULL,
    active      integer DEFAULT 1 NOT NULL		          
)ENGINE=innodb;
