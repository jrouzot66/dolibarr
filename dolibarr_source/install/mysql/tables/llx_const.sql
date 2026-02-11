
























create table llx_const
(
  rowid       integer AUTO_INCREMENT PRIMARY KEY,
  name        varchar(180) NOT NULL,
  entity      integer DEFAULT 1 NOT NULL,	
  value       text NOT NULL, 				
  type        varchar(64) DEFAULT 'string', 
  visible     tinyint DEFAULT 1 NOT NULL,
  note        text,
  tms         timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=innodb;









