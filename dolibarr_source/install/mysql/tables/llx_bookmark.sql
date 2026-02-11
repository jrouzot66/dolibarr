

















create table llx_bookmark
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY,
  fk_user     integer NOT NULL,
  dateb       datetime,
  url         TEXT,
  target      varchar(16),
  title       varchar(64),
  favicon     varchar(24),
  position    integer DEFAULT 0,
  entity      integer DEFAULT 1 NOT NULL 
)ENGINE=innodb;
