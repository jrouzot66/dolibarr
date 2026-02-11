


















create table llx_c_prospectlevel
(
  code            varchar(12) PRIMARY KEY,
  label           varchar(128),
  sortorder       smallint,
  active          smallint    DEFAULT 1 NOT NULL,
  module          varchar(32) NULL
) ENGINE=innodb;

