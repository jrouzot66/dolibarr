



















create table llx_deplacement
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  ref				varchar(30) DEFAULT NULL,		
  entity			integer DEFAULT 1 NOT NULL,		
  datec				datetime NOT NULL,
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dated				datetime,
  fk_user			integer NOT NULL,
  fk_user_author	integer,
  fk_user_modif		integer,						
  type				varchar(12) NOT NULL,
  fk_statut         integer DEFAULT 1 NOT NULL,
  km				real,
  fk_soc			integer,
  fk_projet         integer DEFAULT 0,
  note_private	    text,
  note_public       text,
  extraparams		varchar(255)					
  
)ENGINE=innodb;
