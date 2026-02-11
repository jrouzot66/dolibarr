

















create table llx_budget_lines
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  fk_budget     	integer NOT NULL,
  fk_project_ids	varchar(180) NOT NULL,		
  amount			double(24,8) NOT NULL,
  datec        		datetime,
  tms           	timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_creat 	integer,
  fk_user_modif 	integer,
  import_key    	integer  
)ENGINE=innodb;
