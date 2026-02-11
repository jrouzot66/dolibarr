

















create table llx_paiementcharge
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  fk_charge       integer,
  datec           datetime,           
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datep           datetime,           
  amount          double(24,8) DEFAULT 0,
  fk_typepaiement integer NOT NULL,
  num_paiement    varchar(50),
  note            text,
  fk_bank         integer NOT NULL,
  fk_user_creat   integer,            
  fk_user_modif   integer             

)ENGINE=innodb;
