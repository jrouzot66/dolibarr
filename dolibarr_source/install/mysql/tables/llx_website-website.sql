


















CREATE TABLE llx_website
(
	rowid         integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
	type_container varchar(16) NOT NULL DEFAULT 'page',
	entity        integer NOT NULL DEFAULT 1,
	ref	          varchar(128) NOT NULL,
	description   varchar(255),
	maincolor     varchar(16),
	maincolorbis  varchar(16),
	lang          varchar(8),
	otherlang     varchar(255),
	status		  integer DEFAULT 1,
	fk_default_home integer,
	use_manifest integer,
	virtualhost   varchar(255), 
    fk_user_creat integer,
    fk_user_modif integer,
    date_creation datetime,
    position      integer DEFAULT 0,
    lastaccess    datetime NULL,						
    pageviews_previous_month BIGINT UNSIGNED DEFAULT 0,		
    pageviews_month BIGINT UNSIGNED DEFAULT 0,			
    pageviews_total BIGINT UNSIGNED DEFAULT 0,			
	tms           timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    import_key    varchar(14)      
) ENGINE=innodb;
