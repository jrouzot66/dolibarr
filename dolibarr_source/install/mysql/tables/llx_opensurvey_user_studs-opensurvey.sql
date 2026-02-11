
















CREATE TABLE llx_opensurvey_user_studs (
    id_users INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(64) NOT NULL,
    id_sondage VARCHAR(16) NOT NULL,
    reponses VARCHAR(200) NOT NULL,		
    tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    date_creation datetime NOT NULL, 
    ip varchar(250)              
) ENGINE=innodb;
