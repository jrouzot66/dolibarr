




















create table llx_boxes_def
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY,
  file        varchar(200) NOT NULL,        
  entity      integer DEFAULT 1 NOT NULL,	
  fk_user     integer DEFAULT 0 NOT NULL,	
  tms         timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
  note        varchar(130)                  
)ENGINE=innodb;
