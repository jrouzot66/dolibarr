





















create table llx_fichinter_rec
(
	rowid				integer AUTO_INCREMENT PRIMARY KEY,
	titre				varchar(50) NOT NULL,
	entity				integer DEFAULT 1 NOT NULL,	 
	fk_soc				integer DEFAULT NULL,
	datec				datetime,  
	
	fk_contrat			integer DEFAULT 0,          
	fk_user_author		integer,             
	fk_projet			integer,             
	duree				real,                       
	description			text,
	modelpdf			varchar(50),
	note_private		text,
	note_public			text,

	frequency			integer,					
	unit_frequency		varchar(2) DEFAULT 'm',		
	date_when			datetime DEFAULT NULL,		
	date_last_gen		datetime DEFAULT NULL,		
	nb_gen_done			integer DEFAULT NULL,		
	nb_gen_max			integer DEFAULT NULL,		
	auto_validate		integer NULL DEFAULT NULL	

)ENGINE=innodb;
