



















create table llx_c_availability
(
	rowid		integer	 	AUTO_INCREMENT PRIMARY KEY,
	code		varchar(30) NOT NULL,
	label		varchar(128) NOT NULL,
	type_duration	varchar(1),
	qty	    real,
	active		tinyint 	DEFAULT 1  NOT NULL,
	position    integer NOT NULL DEFAULT 0
)ENGINE=innodb;
