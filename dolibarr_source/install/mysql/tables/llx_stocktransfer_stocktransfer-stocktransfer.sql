















CREATE TABLE llx_stocktransfer_stocktransfer(
	
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
    entity integer  DEFAULT 1 NOT NULL,
	ref varchar(128) DEFAULT '(PROV)' NOT NULL, 
	label varchar(255), 
	fk_soc integer, 
	fk_project integer,
    fk_warehouse_source integer,
    fk_warehouse_destination integer,
    description text,
	note_public text, 
	note_private text,
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    date_creation datetime NOT NULL,
    date_prevue_depart date DEFAULT NULL,
    date_reelle_depart date DEFAULT NULL,
    date_prevue_arrivee date DEFAULT NULL,
    date_reelle_arrivee date DEFAULT NULL,
    lead_time_for_warning integer DEFAULT NULL,
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	import_key varchar(14), 
	model_pdf varchar(255), 
	last_main_doc varchar(255),
	status smallint NOT NULL,
	fk_incoterms          integer, 
    location_incoterms    varchar(255)
	
) ENGINE=innodb;
