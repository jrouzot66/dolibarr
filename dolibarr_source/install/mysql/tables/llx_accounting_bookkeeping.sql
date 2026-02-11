


















CREATE TABLE llx_accounting_bookkeeping
(
  rowid                 integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  entity                integer DEFAULT 1 NOT NULL,	
  piece_num             integer NOT NULL,			
  doc_date              date NOT NULL,				
  doc_type              varchar(30) NOT NULL,		
  doc_ref               varchar(300) NOT NULL,		
  fk_doc                integer NOT NULL,			
  fk_docdet             integer NOT NULL,			
  thirdparty_code       varchar(32),                
  subledger_account     varchar(32),				
  subledger_label       varchar(255),				
  numero_compte         varchar(32) NOT NULL,		
  label_compte          varchar(255) NOT NULL,		
  label_operation       varchar(255),				
  debit                 double(24,8) NOT NULL,		
  credit                double(24,8) NOT NULL,		
  montant               double(24,8) NULL,	   	    
  sens                  varchar(1) DEFAULT NULL,	
  multicurrency_amount  double(24,8),				
  multicurrency_code    varchar(255),				
  lettering_code        varchar(255),				
  date_lettering        datetime,					
  date_lim_reglement    datetime DEFAULT NULL,		
  fk_user_author        integer NOT NULL,			
  fk_user_modif         integer,					
  date_creation         datetime,					
  tms                   timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,					
  fk_user               integer NULL,               
  code_journal          varchar(32) NOT NULL,		
  journal_label         varchar(255),				
  date_validated        datetime,					
  date_export	      	datetime DEFAULT NULL,		
  import_key            varchar(14),				
  extraparams           varchar(255)				
) ENGINE=innodb;
