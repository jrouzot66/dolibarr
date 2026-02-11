






















create table llx_bordereau_cheque
(
  rowid             integer AUTO_INCREMENT PRIMARY KEY,
  ref               varchar(30) NOT NULL,					
  label             varchar(255),
  ref_ext           varchar(255),							
  type              varchar(6) DEFAULT 'CHQ',              
  datec             datetime NOT NULL,
  date_bordereau    date,
  amount            double(24,8) NOT NULL,
  nbcheque          smallint NOT NULL,
  fk_bank_account   integer,
  fk_user_author    integer,
  statut            smallint NOT NULL DEFAULT 0,
  tms               timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  note              text,
  entity            integer DEFAULT 1 NOT NULL			
)ENGINE=innodb;
