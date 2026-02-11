



















create table llx_element_contact
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,  
  datecreate      datetime NULL, 			
  statut          smallint DEFAULT 5, 		
  
  element_id		int NOT NULL, 		    
  fk_c_type_contact	int NOT NULL,	        
  fk_socpeople      integer NOT NULL
)ENGINE=innodb;

