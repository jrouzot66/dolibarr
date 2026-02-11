

















create table llx_accounting_fiscalyear
(
	rowid			integer AUTO_INCREMENT PRIMARY KEY,
	label			varchar(128) NOT NULL,
	date_start		date,
	date_end		date,
	statut			tinyint DEFAULT 0 NOT NULL,
	entity			integer DEFAULT 1 NOT NULL,	  
	datec			datetime NOT NULL,
	tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	fk_user_author	integer DEFAULT NULL,
	fk_user_modif	integer DEFAULT NULL
)ENGINE=innodb;
