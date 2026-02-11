


















create table llx_c_email_senderprofile
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  entity		  integer DEFAULT 1 NOT NULL,	  
  private         smallint DEFAULT 0 NOT NULL,    
  date_creation   datetime,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  label           varchar(255),					  
  email           varchar(255) NOT NULL,		  
  signature		  text,                           
  position        smallint DEFAULT 0,		      
  active          tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;
