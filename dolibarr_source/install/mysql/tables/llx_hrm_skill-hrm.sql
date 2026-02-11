

















CREATE TABLE llx_hrm_skill(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	label varchar(255), 
	description text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	required_level integer NOT NULL, 
	date_validite integer NOT NULL, 
	temps_theorique double(24,8) NOT NULL, 
	skill_type integer NOT NULL, 
	note_public text, 
	note_private text
	
) ENGINE=innodb;
