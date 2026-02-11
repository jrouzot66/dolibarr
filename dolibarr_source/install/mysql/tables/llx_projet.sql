


















create table llx_projet
(
  rowid            	integer AUTO_INCREMENT PRIMARY KEY,
  fk_project        integer DEFAULT NULL,       
  fk_soc           	integer,
  datec            	datetime,					
  tms              	timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dateo            	date,						
  datee            	date,						
  ref              	varchar(50),
  entity           	integer DEFAULT 1 NOT NULL,	
  title            	varchar(255) NOT NULL,
  description      	text,
  fk_user_creat    	integer NOT NULL,			
  fk_user_modif    	integer,
  public           	integer,						
  fk_statut        	integer DEFAULT 0 NOT NULL,	
  fk_opp_status    	integer DEFAULT NULL,	        
  opp_percent	   	double(5,2),
  fk_opp_status_end	integer DEFAULT NULL,	        
  date_close       	datetime DEFAULT NULL,    
  fk_user_close    	integer DEFAULT NULL,
  note_private     	text,
  note_public      	text,
  email_msgid      	varchar(175),				
  
  opp_amount       	double(24,8),
  budget_amount    	double(24,8),
  usage_opportunity    integer DEFAULT 0,		
  usage_task           integer DEFAULT 1,		
  usage_bill_time      integer DEFAULT 0,		
  usage_organize_event integer DEFAULT 0,		
  date_start_event 	datetime,					
  date_end_event   	datetime,					
  location         	varchar(255),				
  accept_conference_suggestions integer DEFAULT 0,		
  accept_booth_suggestions integer DEFAULT 0,	
  max_attendees     integer DEFAULT 0,
  price_registration    double(24,8),
  price_booth    	double(24,8),
  model_pdf        	varchar(255),
  ip            	varchar(250),              		
  last_main_doc	   	varchar(255),				
  import_key	   	varchar(14),				
  extraparams		varchar(255)				
)ENGINE=innodb;
