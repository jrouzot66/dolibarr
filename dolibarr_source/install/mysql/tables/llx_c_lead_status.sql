
















create table llx_c_lead_status
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY,
  code 		  varchar(10),
  label       varchar(128),
  position    integer,
  percent     double(5,2),
  active      tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;

