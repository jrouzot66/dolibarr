

















create table llx_subscription
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec           datetime,
  fk_adherent     integer,
  fk_type         integer,
  dateadh         datetime,
  datef           datetime,
  subscription    double(24,8),
  fk_bank         integer DEFAULT NULL,
  fk_user_creat   integer DEFAULT NULL,
  fk_user_valid   integer DEFAULT NULL,
  note            text
)ENGINE=innodb;
