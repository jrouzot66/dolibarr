





















create table llx_chargesociales
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  ref               varchar(16),                    
  date_ech          datetime NOT NULL,              
  libelle           varchar(80) NOT NULL,
  entity            integer DEFAULT 1 NOT NULL,     
  tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  date_creation     datetime,                       
  date_valid        datetime,                       
  fk_user integer   DEFAULT NULL,		    
  fk_user_author    integer,                        
  fk_user_modif     integer,                        
  fk_user_valid     integer,                        
  fk_type           integer NOT NULL,
  fk_account        integer,                        
  fk_mode_reglement integer,                        
  amount            double(24,8) default 0 NOT NULL,
  paye              smallint default 0 NOT NULL,
  periode           date,
  fk_projet         integer DEFAULT NULL,
  note_private		text,
  note_public		text,
  import_key        varchar(14)
)ENGINE=innodb;








