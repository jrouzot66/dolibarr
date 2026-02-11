



















create table llx_links
(
  rowid             INTEGER AUTO_INCREMENT PRIMARY KEY,
  entity            INTEGER DEFAULT 1 NOT NULL,     
  datea             DATETIME NOT NULL,              
  url               VARCHAR(255) NOT NULL,          
  label             VARCHAR(255) NOT NULL,          
  objecttype        VARCHAR(255) NOT NULL,          
  objectid          INTEGER NOT NULL
)ENGINE=innodb;
