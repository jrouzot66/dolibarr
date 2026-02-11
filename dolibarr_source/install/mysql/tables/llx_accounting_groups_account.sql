


















create table llx_accounting_groups_account
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  fk_accounting_account		INTEGER NOT NULL,
  fk_c_accounting_category	INTEGER NOT NULL
)ENGINE=innodb;
