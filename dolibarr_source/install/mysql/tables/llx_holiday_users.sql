


















CREATE TABLE llx_holiday_users 
(
	fk_user     integer NOT NULL,
	fk_type     integer NOT NULL,
	nb_holiday  real NOT NULL DEFAULT 0
) ENGINE=innodb;
