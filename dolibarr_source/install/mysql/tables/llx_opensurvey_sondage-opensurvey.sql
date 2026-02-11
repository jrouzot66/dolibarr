
















CREATE TABLE llx_opensurvey_sondage (
	id_sondage VARCHAR(16) PRIMARY KEY,
	entity integer DEFAULT 1 NOT NULL,	         
    commentaires text,
	mail_admin VARCHAR(128),
	nom_admin VARCHAR(64),
	fk_user_creat integer NOT NULL,
	titre TEXT NOT NULL,
	date_fin DATETIME NULL,
    status integer DEFAULT 1,
	format VARCHAR(2) NOT NULL,                 
	mailsonde tinyint NOT NULL DEFAULT 0,
	allow_comments tinyint NOT NULL DEFAULT 1,
	allow_spy tinyint NOT NULL DEFAULT 1,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	sujet TEXT									
) ENGINE=innodb;
