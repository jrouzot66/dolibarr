




















CREATE TABLE IF NOT EXISTS llx_c_exp_tax_cat (
    rowid       integer  AUTO_INCREMENT PRIMARY KEY,
    label       varchar(128) NOT NULL,
    entity      integer DEFAULT 1 NOT NULL,
    active      integer DEFAULT 1 NOT NULL	          
)ENGINE=innodb;
