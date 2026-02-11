
























create table llx_mailing
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  statut			smallint       DEFAULT 0,            
  titre				varchar(128),                        
  entity			integer DEFAULT 1 NOT NULL,	         
  sujet				varchar(128),                        
  body				mediumtext,
  bgcolor			varchar(8),                          
  bgimage			varchar(255),                        
  evenunsubscribe   smallint       DEFAULT 0, 			 
  cible				varchar(60),
  nbemail			integer,
  email_from		varchar(160),                        
  name_from         varchar(128),                        
  email_replyto		varchar(160),                        
  email_errorsto	varchar(160),                        
  tag				varchar(128) NULL,
  date_creat		datetime,                            
  date_valid		datetime,                            
  date_appro		datetime,                            
  date_envoi		datetime,                            
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  
  fk_user_creat		integer,                             
  fk_user_modif		integer,                             
  fk_user_valid		integer,                             
  fk_user_appro		integer,                             
  extraparams		varchar(255),						 
  joined_file1		varchar(255),
  joined_file2		varchar(255),
  joined_file3		varchar(255),
  joined_file4		varchar(255),
  note_private    text,
  note_public     text
)ENGINE=innodb;
