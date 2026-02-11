















CREATE TABLE llx_bookcal_availabilities(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	label varchar(255), 
	description text, 
	note_public text, 
	note_private text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	last_main_doc varchar(255), 
	import_key varchar(14), 
	model_pdf varchar(255), 
	status integer NOT NULL, 
	start date NOT NULL, 
	end date NOT NULL, 
	duration integer DEFAULT 30 NOT NULL, 
	startHour integer NOT NULL, 
	endHour integer NOT NULL, 
	fk_bookcal_calendar integer NOT NULL
	
) ENGINE=innodb;


SELECT * FROM llx_bookcal_availabilities
WHERE rowid = 1;
