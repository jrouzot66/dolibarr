















CREATE TABLE llx_element_time(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ref_ext varchar(32),                       
    fk_element integer NOT NULL,
    elementtype varchar(32) NOT NULL,
    element_date date,
    element_datehour datetime,
    element_date_withhour integer,
    element_duration double,
    fk_product integer,
    fk_user integer,
    thm double(24,8),
	invoice_id integer DEFAULT NULL,
	invoice_line_id integer DEFAULT NULL,
	intervention_id integer DEFAULT NULL,
	intervention_line_id integer DEFAULT NULL,
	import_key varchar(14),
	datec datetime,
    tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	note text
	
) ENGINE=innodb;
