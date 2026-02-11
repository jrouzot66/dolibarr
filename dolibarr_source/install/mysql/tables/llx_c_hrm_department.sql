

















create table llx_c_hrm_department
(
  rowid      	integer     PRIMARY KEY,
  pos   		tinyint DEFAULT 0 NOT NULL,
  code    		varchar(16) NOT NULL,
  label 		varchar(128),
  active  		tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;

