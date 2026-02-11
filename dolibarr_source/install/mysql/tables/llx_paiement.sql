



















create table llx_paiement
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  ref              varchar(30) NULL,                    
  ref_ext          varchar(255) NULL,                    
  entity           integer   DEFAULT 1 NOT NULL,		
  datec            datetime,							
  tms              timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datep            datetime,							
  amount           double(24,8) DEFAULT 0,				
  multicurrency_amount double(24,8) DEFAULT 0,			
  fk_paiement      integer NOT NULL,					
  num_paiement     varchar(50),
  note             text,
  ext_payment_id   varchar(255),						
  ext_payment_site varchar(128),						
  fk_bank          integer NOT NULL DEFAULT 0,
  fk_user_creat    integer,								
  fk_user_modif    integer,								
  statut           smallint DEFAULT 0 NOT NULL,			
  fk_export_compta integer DEFAULT 0 NOT NULL,			
  pos_change       double(24,8) DEFAULT 0  				
)ENGINE=innodb;
