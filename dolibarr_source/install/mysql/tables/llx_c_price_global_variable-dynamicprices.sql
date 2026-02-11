

















create table llx_c_price_global_variable
(
	rowid					integer AUTO_INCREMENT PRIMARY KEY,
	code					varchar(20) NOT NULL,
	description		text DEFAULT NULL,
	value					double(24,8) DEFAULT 0
)ENGINE=innodb;
