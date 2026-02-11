






















create table llx_events
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  tms            timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,                   
  type           varchar(32)  NOT NULL,       
  entity         integer DEFAULT 1 NOT NULL,  
  prefix_session varchar(255) NULL,			  
  dateevent      datetime,                    
  fk_user        integer,                     
  description    varchar(250) NOT NULL,       
  ip             varchar(250) NOT NULL,       
  user_agent     varchar(255) NULL,           
  fk_object      integer NULL,                
  authentication_method varchar(64) NULL,     
  fk_oauth_token integer NULL                 
) ENGINE=innodb;

