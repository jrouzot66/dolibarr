




















create table llx_societe_remise
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  entity			integer DEFAULT 1 NOT NULL,			
  fk_soc			integer NOT NULL,
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec				datetime,							
  fk_user_author	integer,							
  remise_client		double(7,4)  DEFAULT 0 NOT NULL,	
  note				text

)ENGINE=innodb;

