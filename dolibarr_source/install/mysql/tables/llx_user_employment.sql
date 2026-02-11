


















create table llx_user_employment
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  entity            integer DEFAULT 1 NOT NULL, 
  ref				varchar(50),				
  ref_ext			varchar(50),				
  fk_user			integer,
  datec             datetime,
  tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_creat     integer,
  fk_user_modif     integer,
  job				varchar(128),				
  status            integer NOT NULL,			
  salary			double(24,8),				
  salaryextra		double(24,8),				
  weeklyhours		double(16,8),				
  dateemployment    date,						
  dateemploymentend date						
)ENGINE=innodb;

