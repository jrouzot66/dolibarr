


















create table llx_projet_task
(
  rowid					integer AUTO_INCREMENT PRIMARY KEY,
  ref 					varchar(50),
  entity				integer DEFAULT 1 NOT NULL,	
  fk_projet				integer NOT NULL,
  fk_task_parent		integer DEFAULT 0 NOT NULL,
  datec					datetime,						
  tms					timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,						
  dateo					datetime,						
  datee					datetime,						
  datev					datetime,						
  label					varchar(255) NOT NULL,
  description			text,
  duration_effective	real DEFAULT 0,					
  planned_workload		real DEFAULT 0,
  progress				integer DEFAULT 0,				
  priority				integer DEFAULT 0,				
  budget_amount         double(24,8),
  fk_user_creat			integer,						
  fk_user_modif			integer,						
  fk_user_valid			integer,						
  fk_statut				smallint DEFAULT 0 NOT NULL,
  note_private			text,
  note_public			text,
  rang                  integer DEFAULT 0,
  model_pdf        		varchar(255),
  import_key			varchar(14),						
  status 				integer DEFAULT 1 NOT NULL
)ENGINE=innodb;
