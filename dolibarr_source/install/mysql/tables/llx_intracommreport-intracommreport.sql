


















create table llx_intracommreport
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  ref				varchar(30)        NOT NULL,			
  entity			integer  DEFAULT 1 NOT NULL,			
  type_declaration	varchar(32),
  periods			varchar(32),
  mode				varchar(32),
  content_xml		text,
  type_export		varchar(10),
  datec             datetime,
  tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=innodb;
