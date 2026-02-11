






















create table llx_fichinterdet_rec
(
	rowid				integer AUTO_INCREMENT PRIMARY KEY,
	fk_fichinter		integer NOT NULL,
	date				datetime,				
	description			text,					
	duree				integer,				
	rang				integer DEFAULT 0,		
	total_ht			DOUBLE(24, 8) NULL DEFAULT NULL,
	subprice			DOUBLE(24, 8) NULL DEFAULT NULL,
	fk_parent_line		integer NULL DEFAULT NULL,
	fk_product			integer NULL DEFAULT NULL,
	label				varchar(255) NULL DEFAULT NULL,
	tva_tx				DOUBLE(6, 3) NULL DEFAULT NULL,
	localtax1_tx		DOUBLE(6, 3) NULL DEFAULT 0,
	localtax1_type		VARCHAR(1) NULL DEFAULT NULL,
	localtax2_tx		DOUBLE(6, 3) NULL DEFAULT 0,
	localtax2_type		VARCHAR(1) NULL DEFAULT NULL,
	qty					double NULL DEFAULT NULL,
	remise_percent		double NULL DEFAULT 0,
	fk_remise_except	integer NULL DEFAULT NULL,
	price				DOUBLE(24, 8) NULL DEFAULT NULL,
	total_tva			DOUBLE(24, 8) NULL DEFAULT NULL,
	total_localtax1		DOUBLE(24, 8) NULL DEFAULT 0,
	total_localtax2		DOUBLE(24, 8) NULL DEFAULT 0,
	total_ttc			DOUBLE(24, 8) NULL DEFAULT NULL,
	product_type		INTEGER NULL DEFAULT 0,
	date_start			datetime NULL DEFAULT NULL,
	date_end			datetime NULL DEFAULT NULL,
	info_bits			INTEGER NULL DEFAULT 0,
	buy_price_ht		DOUBLE(24, 8) NULL DEFAULT 0,
	fk_product_fournisseur_price	integer NULL DEFAULT NULL,
	fk_code_ventilation	integer NOT NULL DEFAULT 0,
	special_code		integer UNSIGNED NULL DEFAULT 0,
	fk_unit				integer NULL DEFAULT NULL,	
	import_key			varchar(14) NULL DEFAULT NULL

)ENGINE=innodb;
