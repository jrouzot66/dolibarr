
















create table llx_c_socialnetworks
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY,
  entity      integer DEFAULT 1 NOT NULL,
  code        varchar(100),
  label       varchar(150),
  url         text,
  icon        varchar(20),
  active      tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;
