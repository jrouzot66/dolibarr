





















create table llx_actioncomm_resources
(
  rowid           	integer AUTO_INCREMENT PRIMARY KEY,  
  fk_actioncomm		integer NOT NULL,			
  element_type		varchar(50) NOT NULL,		
  fk_element		integer NOT NULL,			
  answer_status		varchar(50) NULL,
  mandatory			smallint,
  transparency		smallint default 1	    
) ENGINE=innodb;
