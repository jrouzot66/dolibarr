


















create table llx_salary
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  ref             varchar(30) NULL,           
  ref_ext         varchar(255),				  
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datec           datetime,                   
  fk_user         integer NOT NULL,
  datep           date,                       
  datev           date,                       
  salary          double(24,8),               
  amount          double(24,8) NOT NULL DEFAULT 0,
  fk_projet       integer DEFAULT NULL,
  fk_typepayment  integer NOT NULL,			  
  num_payment     varchar(50),                
  label           varchar(255),
  datesp          date,                       
  dateep          date,                       
  entity          integer DEFAULT 1 NOT NULL, 
  note            text,
  note_public     text,
  fk_bank         integer,
  paye            smallint default 0 NOT NULL,
  fk_account      integer,
  fk_user_author  integer,                    
  fk_user_modif   integer                     
)ENGINE=innodb;
