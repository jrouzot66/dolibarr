

















CREATE TABLE llx_holiday 
(
rowid          integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
ref			   varchar(30) NOT NULL,
ref_ext		   varchar(255),
entity         integer DEFAULT 1 NOT NULL,		
fk_user        integer NOT NULL,
fk_user_create integer,
fk_user_modif  integer,
fk_type        integer NOT NULL,
date_create    DATETIME NOT NULL,
description    VARCHAR( 255 ) NOT NULL,
date_debut     DATE NOT NULL,
date_fin       DATE NOT NULL,
halfday        integer DEFAULT 0,				
nb_open_day    double(24,8) DEFAULT NULL,       
statut         integer NOT NULL DEFAULT 1,      
fk_validator   integer NOT NULL,				
date_valid     DATETIME DEFAULT NULL,			
fk_user_valid  integer DEFAULT NULL,			
date_approval  DATETIME DEFAULT NULL,			
fk_user_approve integer DEFAULT NULL,			
date_refuse    DATETIME DEFAULT NULL,
fk_user_refuse integer DEFAULT NULL,
date_cancel    DATETIME DEFAULT NULL,
fk_user_cancel integer DEFAULT NULL,
detail_refuse  varchar( 250 ) DEFAULT NULL,
note_private   text,
note_public    text,
tms            timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
import_key			varchar(14),
extraparams			varchar(255)				
) 
ENGINE=innodb;
