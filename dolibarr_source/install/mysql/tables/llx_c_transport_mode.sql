





















CREATE TABLE llx_c_transport_mode (
  rowid     integer AUTO_INCREMENT PRIMARY KEY,
  entity    integer	DEFAULT 1 NOT NULL,	
  code      varchar(3) NOT NULL,
  label     varchar(255) NOT NULL,
  active    tinyint DEFAULT 1  NOT NULL
) ENGINE=innodb;

