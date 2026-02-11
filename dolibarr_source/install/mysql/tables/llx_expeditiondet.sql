




















create table llx_expeditiondet
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  fk_expedition     integer NOT NULL,
  fk_origin_line    integer,           
  fk_entrepot       integer,           
  qty               real,              
  rang              integer  DEFAULT 0
)ENGINE=innodb;
