

















CREATE TABLE llx_c_invoice_subtype 
(
	rowid		integer AUTO_INCREMENT PRIMARY KEY,
	entity		integer DEFAULT 1 NOT NULL,	
	fk_country	integer NOT NULL,
	code		varchar(5) NOT NULL,
	label		varchar(100),
	active		tinyint DEFAULT 1 NOT NULL

) ENGINE=innodb;

