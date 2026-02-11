





















create table llx_don
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  ref             varchar(30) DEFAULT NULL,     
  entity          integer DEFAULT 1 NOT NULL,	
  tms             timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  fk_statut       smallint NOT NULL DEFAULT 0,  
  datedon         datetime,                     
  amount          double(24,8) DEFAULT 0,
  fk_payment      integer,						
  paid            smallint default 0 NOT NULL,
  fk_soc      	  integer NULL, 
  firstname       varchar(50),
  lastname        varchar(50),
  societe         varchar(50),
  address         text,
  zip             varchar(30),
  town            varchar(50),
  country         varchar(50),					
  fk_country      integer NOT NULL,
  email           varchar(255),
  phone           varchar(24),
  phone_mobile    varchar(24),
  public          smallint DEFAULT 1 NOT NULL,  
  fk_projet       integer NULL,                 
  datec           datetime,                     
  fk_user_author  integer NOT NULL,
  fk_user_modif   integer,
  date_valid      datetime,						
  fk_user_valid   integer NULL,
  note_private    text,
  note_public     text,
  model_pdf       varchar(255),
  import_key      varchar(14),
  extraparams	  varchar(255)							
)ENGINE=innodb;
