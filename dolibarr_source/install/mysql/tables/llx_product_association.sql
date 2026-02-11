


















create table llx_product_association
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  fk_product_pere       integer NOT NULL DEFAULT 0, 
  fk_product_fils       integer NOT NULL DEFAULT 0, 
  qty                   double NULL,
  incdec                integer DEFAULT 1, 
  rang                  integer DEFAULT 0
)ENGINE=innodb;

