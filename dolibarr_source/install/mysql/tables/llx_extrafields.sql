


















create table llx_extrafields
(
	rowid           integer AUTO_INCREMENT PRIMARY KEY,
	name            varchar(64) NOT NULL,         				
	entity          integer DEFAULT 1 NOT NULL,					
    elementtype     varchar(64) NOT NULL DEFAULT 'member',		
	label           varchar(255) NOT NULL,        				
	type            varchar(8),
	size            varchar(8) DEFAULT NULL,
	fieldcomputed   text,
	fielddefault    text,
	fieldunique     integer DEFAULT 0,
	fieldrequired   integer DEFAULT 0,
	perms			varchar(255),								
	enabled         varchar(255),
	pos             integer DEFAULT 0,
	alwayseditable  integer DEFAULT 0,							
	param			text,										
	list			varchar(255) DEFAULT '1',					
	printable		integer DEFAULT 0,					     	
    totalizable     boolean DEFAULT FALSE,                      
	langs			varchar(64),								
	help            text,                                       
	css             varchar(128),                               
	cssview         varchar(128),                               
	csslist         varchar(128),                               
	fk_user_author	integer,									
	fk_user_modif	integer,	                                
	datec			datetime,									
	tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP									
)ENGINE=innodb;
