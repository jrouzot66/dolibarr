
create table llx_expedition_package
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  fk_expedition     integer NOT NULL,
  description       varchar(255),    
  value             double(24,8)     DEFAULT 0,
  fk_package_type    integer,           
  height            float,	       
  width             float,	       
  size              float,	       
  size_units        integer,	       
  weight            float,	       
  weight_units      integer,	       
  dangerous_goods   smallint          DEFAULT 0, 
  tail_lift         smallint          DEFAULT 0, 
  rang              integer  DEFAULT 0
)ENGINE=innodb;
