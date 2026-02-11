























create table llx_bank_account
(
  rowid						integer AUTO_INCREMENT PRIMARY KEY,
  datec						datetime,
  tms						timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  ref						varchar(12) NOT NULL,
  label						varchar(30) NOT NULL,
  entity					integer DEFAULT 1 NOT NULL, 
  fk_user_author			integer,
  fk_user_modif				integer,
  bank						varchar(60),
  code_banque				varchar(128),
  code_guichet				varchar(6),
  number					varchar(255),
  cle_rib					varchar(5),
  bic						varchar(11),                
  bic_intermediate          varchar(11),                
  iban_prefix				varchar(34),				
  country_iban				varchar(2),					
  cle_iban					varchar(2),
  domiciliation				varchar(255),
  pti_in_ctti               smallint DEFAULT 0,
  state_id					integer        DEFAULT NULL,
  fk_pays					integer        NOT NULL,
  proprio					varchar(60),
  owner_address				varchar(255),
  owner_zip					varchar(25),
  owner_town				varchar(50),
  owner_country_id			integer DEFAULT NULL,
  courant					smallint DEFAULT 0 NOT NULL,
  clos						smallint DEFAULT 0 NOT NULL,
  rappro					smallint DEFAULT 1,
  url						varchar(128),
  account_number			varchar(32),				
  fk_accountancy_journal	integer,					
  currency_code				varchar(3) NOT NULL,
  min_allowed				integer DEFAULT 0,
  min_desired				integer DEFAULT 0,
  comment					text,						
  note_public				text,
  model_pdf					varchar(255),
  import_key				varchar(14),
  extraparams			    varchar(255),				
  ics						varchar(32),                
  ics_transfer              varchar(32)                 
)ENGINE=innodb;
