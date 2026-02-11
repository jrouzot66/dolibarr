

















CREATE TABLE llx_ecm_files
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  ref				varchar(128),					
  label				varchar(128) NOT NULL,			
  share				varchar(128) NULL,				
  share_pass		varchar(32) NULL,				
  entity			integer DEFAULT 1 NOT NULL,		
  filepath    		varchar(255) NOT NULL,   	    
  filename          varchar(255) NOT NULL,			
  src_object_type   varchar(64),	         		
  src_object_id     integer,		             	
  fullpath_orig		varchar(750),	                
  description		text,
  keywords          varchar(750),                   
  cover             text,                           
  position          integer,                        
  gen_or_uploaded   varchar(12),                    
  extraparams		varchar(255),					
  date_c			datetime,
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_user_c			integer,
  fk_user_m			integer,
  note_private		text,
  note_public		text,
  acl				text							
) ENGINE=innodb;
