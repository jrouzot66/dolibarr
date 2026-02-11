
















CREATE TABLE llx_ticket
(
	rowid       integer AUTO_INCREMENT PRIMARY KEY,
	entity		integer DEFAULT 1,
	ref			varchar(128) NOT NULL,
	track_id    varchar(128) NOT NULL,
	fk_soc		integer DEFAULT 0,
	fk_project	integer DEFAULT 0,
	fk_contract	integer DEFAULT 0,
	origin_email   varchar(128),
	fk_user_create	integer,
	fk_user_assign	integer,
	subject	varchar(255),
	message	mediumtext,
	fk_statut integer,
	resolution integer,
	progress integer DEFAULT 0,				
	timing varchar(20),
	type_code varchar(32),
	category_code varchar(32),
	severity_code varchar(32),
	datec datetime,							
	date_read datetime,
	date_last_msg_sent datetime,
	date_close datetime,
	notify_tiers_at_create tinyint,
	email_msgid varchar(255),				
	email_date datetime,					
	ip varchar(250),
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    import_key        varchar(14)
)ENGINE=innodb;
