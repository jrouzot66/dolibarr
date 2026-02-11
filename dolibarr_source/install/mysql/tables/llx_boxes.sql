
























create table llx_boxes
(
  rowid			integer AUTO_INCREMENT PRIMARY KEY,
  entity		integer NOT NULL DEFAULT 1,
  box_id		integer NOT NULL,
  position		smallint NOT NULL,
  box_order		varchar(3) NOT NULL,
  fk_user		integer default 0 NOT NULL,
  maxline		integer NULL,
  params		varchar(255)
)ENGINE=innodb;
