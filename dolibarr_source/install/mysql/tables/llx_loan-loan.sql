


















create table llx_loan
(
  rowid							integer AUTO_INCREMENT PRIMARY KEY,
  entity						integer DEFAULT 1 NOT NULL,
  datec							datetime,
  tms							timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  label							varchar(80) NOT NULL,
  fk_bank						integer,

  capital						double(24,8) DEFAULT 0 NOT NULL,
  insurance_amount				double(24,8) DEFAULT 0,

  datestart						date,
  dateend						date,
  nbterm						real,
  rate							double  NOT NULL,

  note_private					text,
  note_public					text,

  capital_position				double(24,8) DEFAULT 0,		
  date_position					date,
  
  paid							smallint default 0 NOT NULL,

  accountancy_account_capital	varchar(32),
  accountancy_account_insurance	varchar(32),
  accountancy_account_interest	varchar(32),
  
  fk_projet						integer DEFAULT NULL,
  
  fk_user_author				integer DEFAULT NULL,
  fk_user_modif					integer DEFAULT NULL, 
  active						tinyint DEFAULT 1  NOT NULL
)ENGINE=innodb;
