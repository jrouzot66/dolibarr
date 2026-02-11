


















create table llx_c_forme_juridique
(
  rowid      	integer AUTO_INCREMENT PRIMARY KEY,
  code       	integer NOT NULL,
  fk_pays    	integer NOT NULL,
  libelle    	varchar(255),
  isvatexempted	tinyint DEFAULT 0  NOT NULL,
  active     	tinyint DEFAULT 1  NOT NULL,
  module        varchar(32) NULL,
  position      integer NOT NULL DEFAULT 0
)ENGINE=innodb;

