


















create table llx_notify_def_object
(
  id				integer AUTO_INCREMENT PRIMARY KEY,
  entity			integer DEFAULT 1 NOT NULL,		
  objet_type		varchar(16),					
  objet_id			integer NOT NULL,				
  type_notif		varchar(16) DEFAULT 'browser',	
  date_notif		datetime,						
  user_id			integer,						
  moreparam			varchar(255)
)ENGINE=innodb;
