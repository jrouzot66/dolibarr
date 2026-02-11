




























create table llx_c_type_contact
(
  rowid      	integer     AUTO_INCREMENT PRIMARY KEY,
  element       varchar(30) NOT NULL,
  source        varchar(8)  DEFAULT 'external' NOT NULL,
  code          varchar(32) NOT NULL,
  libelle 	    varchar(128)	NOT NULL,
  active  	    tinyint DEFAULT 1  NOT NULL,
  module        varchar(32) NULL,
  position      integer NOT NULL DEFAULT 0
)ENGINE=innodb;
