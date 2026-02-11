



















create table llx_mailing_unsubscribe
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  entity			integer DEFAULT 1 NOT NULL,	         
  email				varchar(255),
  unsubscribegroup	varchar(128) DEFAULT '',
  ip				varchar(128),
  date_creat		datetime,                            
  tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=innodb;
