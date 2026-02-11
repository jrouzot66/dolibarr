


















CREATE TABLE llx_c_productbatch_qcstatus
(
  rowid    integer            AUTO_INCREMENT PRIMARY KEY,
  entity 	 integer NOT NULL DEFAULT 1,
  code     varchar(16)        NOT NULL,
  label    varchar(128)        NOT NULL,
  active   integer  DEFAULT 1 NOT NULL  
)ENGINE=innodb;
