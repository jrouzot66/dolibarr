

















create table llx_c_hrm_public_holiday
(
  id               integer AUTO_INCREMENT PRIMARY KEY,
  entity           integer	DEFAULT 0 NOT NULL,   
  fk_country       integer,
  fk_departement   integer,
  code             varchar(62),
  dayrule          varchar(64) DEFAULT '',        
  day              integer,
  month            integer,
  year             integer,                       
  active           integer DEFAULT 1,
  import_key       varchar(14)
)ENGINE=innodb;
