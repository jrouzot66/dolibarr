



















create table llx_c_civility
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
  code        varchar(6) NOT NULL,
  label		  varchar(128),
  active      tinyint DEFAULT 1  NOT NULL,
  module      varchar(32) NULL
)ENGINE=innodb;

