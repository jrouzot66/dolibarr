



















create table llx_c_barcode_type
(
  rowid    integer            AUTO_INCREMENT PRIMARY KEY,
  code     varchar(16)        NOT NULL,
  entity   integer  DEFAULT 1 NOT NULL,	
  libelle  varchar(128)        NOT NULL,
  coder    varchar(16)        NOT NULL,
  example  varchar(16)        NOT NULL
  
)ENGINE=innodb;
