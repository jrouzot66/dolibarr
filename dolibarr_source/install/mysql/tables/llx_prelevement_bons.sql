

























create table llx_prelevement_bons
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  type            varchar(16) DEFAULT 'debit-order',				
  ref             varchar(12),        
  entity          integer DEFAULT 1 NOT NULL, 
  datec           datetime,           
  amount          double(24,8) DEFAULT 0, 
  statut          smallint DEFAULT 0, 
  credite         smallint DEFAULT 0, 
  note            text,
  date_trans      datetime,           
  method_trans    smallint,           
  fk_user_trans   integer,            
  date_credit     datetime,           
  fk_user_credit  integer,            
  fk_bank_account integer DEFAULT NULL
)ENGINE=innodb;
