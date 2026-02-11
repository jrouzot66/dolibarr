




















create table llx_notify
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  daten           datetime,           
  fk_action       integer NOT NULL,
  fk_soc          integer NULL,
  fk_contact      integer NULL,
  fk_user         integer NULL,
  type            varchar(16) DEFAULT 'email',
  type_target     varchar(16) NULL,		
  objet_type      varchar(24) NOT NULL,
  objet_id        integer NOT NULL,
  email           varchar(255)
)ENGINE=innodb;
