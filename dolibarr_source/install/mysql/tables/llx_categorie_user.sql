

















CREATE TABLE llx_categorie_user 
(
  fk_categorie 	integer NOT NULL,
  fk_user 		integer NOT NULL,
  import_key 	varchar(14)
) ENGINE=innodb;
