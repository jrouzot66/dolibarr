

















create table llx_c_price_global_variable_updater
(
	rowid						integer AUTO_INCREMENT PRIMARY KEY,
	type						integer NOT NULL,
	description			text DEFAULT NULL,
	parameters			text DEFAULT NULL,
	fk_variable			integer NOT NULL,
	update_interval	integer DEFAULT 0,
	next_update			integer DEFAULT 0,
	last_status			text DEFAULT NULL
)ENGINE=innodb;
