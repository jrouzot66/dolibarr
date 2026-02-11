


















create table llx_fichinterdet
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  fk_fichinter      integer,
  fk_parent_line    integer NULL,
  date              datetime,          
  description       text,              
  duree             integer,           
  rang              integer DEFAULT 0  
)ENGINE=innodb;
