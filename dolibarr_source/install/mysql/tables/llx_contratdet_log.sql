

















create table llx_contratdet_log
(
  rowid                 integer AUTO_INCREMENT PRIMARY KEY,
  tms                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_contratdet         integer NOT NULL,
  date                  datetime NOT NULL,
  statut                smallint NOT NULL,
  fk_user_author        integer NOT NULL,
  commentaire           text

)ENGINE=innodb;
