



















create table llx_c_ticket_category
(
  rowid			 integer AUTO_INCREMENT PRIMARY KEY,
  entity		 integer DEFAULT 1,
  code			 varchar(32) NOT NULL,			
  label			 varchar(128) NOT NULL,
  public         integer DEFAULT 0,
  use_default	 integer DEFAULT 1,
  fk_parent      integer DEFAULT 0 NOT NULL,	
  force_severity varchar(32) NULL,				
  description	 varchar(255),					
  pos			 integer DEFAULT 0 NOT NULL,
  active		 integer DEFAULT 1
)ENGINE=innodb;
