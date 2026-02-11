




















create table llx_mailing_cibles
(
  rowid				integer AUTO_INCREMENT PRIMARY KEY,
  fk_mailing		integer NOT NULL,
  fk_contact		integer NOT NULL,
  lastname			varchar(160),
  firstname			varchar(160),
  email				varchar(160) NOT NULL,
  other				varchar(255) NULL,
  tag				varchar(64) NULL,					
  statut			smallint NOT NULL DEFAULT 0,		
  source_url		varchar(255),
  source_id			integer,
  source_type		varchar(32),
  date_envoi		datetime,
  tms				timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  error_text		varchar(255)						
)ENGINE=innodb;
