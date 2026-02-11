


















create table llx_c_email_templates
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  entity		  integer DEFAULT 1 NOT NULL,	  
  module          varchar(32),                    
  type_template   varchar(32),  				  
  lang            varchar(6) DEFAULT '',		  
  private         smallint DEFAULT 0 NOT NULL,    
  fk_user         integer,                        
  datec           datetime,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  label           varchar(180),					  
  position        smallint,					      
  defaultfortype  smallint DEFAULT 0,			  
  enabled         varchar(255) DEFAULT '1',		  
  active          tinyint DEFAULT 1  NOT NULL,
  email_from	  varchar(255),					  
  email_to		  varchar(255),					  
  email_tocc	  varchar(255),					  
  email_tobcc	  varchar(255),					  
  topic			  text,                           
  joinfiles		  text,                           
  content         mediumtext,                     
  content_lines   text                            
)ENGINE=innodb;
