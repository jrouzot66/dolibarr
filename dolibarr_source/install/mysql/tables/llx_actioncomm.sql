






















create table llx_actioncomm
(
  id				integer AUTO_INCREMENT PRIMARY KEY,
  ref               varchar(30) NOT NULL,
  ref_ext			varchar(255),					
  entity			integer DEFAULT 1 NOT NULL,		
  datep				datetime,						
  datep2			datetime,						

  fk_action			integer,						
  code				varchar(50) NULL,				

  datec				datetime,						
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,						
  fk_user_author	integer,						
  fk_user_mod		integer,						

  fk_project		integer,
  fk_soc			integer,
  fk_contact		integer,
  fk_parent			integer NOT NULL default 0,
  fk_user_action	integer,						
  fk_user_done		integer,						

  transparency      integer,						

  priority			smallint,						
  visibility		varchar(12) DEFAULT 'default',	
  fulldayevent		smallint NOT NULL default 0,    
  percent			smallint NOT NULL default 0,
  location			varchar(128),
  durationp			real,							

  label				varchar(255) NOT NULL,			
  note				mediumtext,						
  
  calling_duration  integer,                        
  
  email_subject		varchar(255),					
  email_msgid		varchar(255),					
  email_from		varchar(255),					
  email_sender		varchar(255),					
  email_to			varchar(255),					
  email_tocc		varchar(255),					
  email_tobcc		varchar(255),					
  errors_to			varchar(255),					
  reply_to			varchar(255),					
  
  recurid           varchar(128),                   
  recurrule         varchar(128),					
  recurdateend      datetime,						

  num_vote          integer DEFAULT NULL,          
  event_paid        smallint NOT NULL DEFAULT 0,    
  status            smallint NOT NULL DEFAULT 0,    

  fk_element		integer DEFAULT NULL,			
  elementtype		varchar(255) DEFAULT NULL,		

  ip            varchar(250),              

  fk_bookcal_calendar integer DEFAULT NULL, 

  import_key		varchar(14),
  extraparams		varchar(255)					
)ENGINE=innodb;




