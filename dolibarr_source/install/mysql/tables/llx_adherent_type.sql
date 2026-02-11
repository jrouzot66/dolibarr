
























create table llx_adherent_type
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  entity           integer DEFAULT 1 NOT NULL,             
  tms              timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  statut           smallint NOT NULL DEFAULT 0,            
  libelle          varchar(50) NOT NULL,                   
  morphy           varchar(3) NOT NULL,                    
  duration         varchar(6) DEFAULT NULL,                
  subscription     varchar(3) NOT NULL DEFAULT '1',        
  amount           double(24,8) DEFAULT NULL,              
  caneditamount    integer DEFAULT 0,                      
  vote             varchar(3) NOT NULL DEFAULT '1',        
  note             text,                                   
  mail_valid       text                                    
)ENGINE=innodb;
