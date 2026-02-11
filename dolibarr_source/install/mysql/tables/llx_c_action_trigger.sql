




















create table llx_c_action_trigger
(
  rowid			integer AUTO_INCREMENT PRIMARY KEY,
  elementtype	varchar(64) 			NOT NULL,
  code			varchar(128)			NOT NULL,
  contexts		varchar(255)			NULL,			
  label			varchar(128)			NOT NULL,
  description	varchar(255),
  rang			integer		DEFAULT 0
)ENGINE=innodb;
