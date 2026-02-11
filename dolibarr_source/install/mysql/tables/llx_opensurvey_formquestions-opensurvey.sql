
















CREATE TABLE llx_opensurvey_formquestions (
	rowid INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
	id_sondage VARCHAR(16),
	question TEXT,
    available_answers TEXT								
) ENGINE=innodb;

