


















create table llx_onlinesignature
(
  rowid                     integer AUTO_INCREMENT PRIMARY KEY,
  entity                    integer DEFAULT 1 NOT NULL,
  object_type               varchar(32) NOT NULL,
  object_id					integer NOT NULL,
  datec                     datetime NOT NULL,
  tms                       timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  name						varchar(255) NOT NULL,
  ip						varchar(128),
  pathoffile				varchar(255)
)ENGINE=innodb;
