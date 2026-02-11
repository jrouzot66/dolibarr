


















create table llx_c_paper_format
(
  rowid    integer                          AUTO_INCREMENT PRIMARY KEY,
  code     varchar(16)                      NOT NULL,
  label    varchar(128)                      NOT NULL,
  width    float(6,2)                       DEFAULT 0,  
  height   float(6,2)                       DEFAULT 0,  
  unit     varchar(5)                       NOT NULL,   
  active   tinyint DEFAULT 1                NOT NULL,
  module  varchar(32) NULL
)ENGINE=innodb;








