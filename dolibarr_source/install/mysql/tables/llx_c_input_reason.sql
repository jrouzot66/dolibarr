





















create table llx_c_input_reason
(
  rowid		integer AUTO_INCREMENT PRIMARY KEY,
  code		varchar(30),
  label		varchar(128),
  active	tinyint default 1  NOT NULL,
  module    varchar(32) NULL
)ENGINE=innodb;

