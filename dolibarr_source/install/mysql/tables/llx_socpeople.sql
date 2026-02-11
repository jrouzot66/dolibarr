




















create table llx_socpeople
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  datec				datetime,
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_soc			integer,									
  entity			integer DEFAULT 1 NOT NULL,					
  ref_ext           varchar(255),                               
  civility			varchar(6),
  lastname			varchar(50),
  firstname			varchar(50),
  address			varchar(255),
  zip				varchar(25),
  town				varchar(255),
  fk_departement	integer,
  fk_pays			integer        DEFAULT 0,
  birthday			date,
  poste				varchar(255),
  phone				varchar(30),
  phone_perso		varchar(30),
  phone_mobile		varchar(30),
  fax				varchar(30),
  email				varchar(255),

  socialnetworks    text DEFAULT NULL,                          

  photo				varchar(255),
  no_email			smallint NOT NULL DEFAULT 0,				
  priv				smallint NOT NULL DEFAULT 0,
  fk_prospectlevel  	varchar(12),                         		
  fk_stcommcontact  		integer        DEFAULT 0 NOT NULL,      	
  fk_user_creat		integer DEFAULT 0,							
  fk_user_modif		integer,
  note_private		text,
  note_public		text,
  default_lang		varchar(6),
  canvas			varchar(32),			
  import_key		varchar(14),
  statut			tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;
