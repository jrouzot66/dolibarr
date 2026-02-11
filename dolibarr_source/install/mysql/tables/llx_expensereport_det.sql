

















CREATE TABLE llx_expensereport_det
(
   rowid integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
   fk_expensereport integer NOT NULL,
   docnumber varchar(128),										
   fk_c_type_fees integer NOT NULL,								
   fk_c_exp_tax_cat integer,
   fk_projet integer,											
   comments text NOT NULL,
   product_type integer DEFAULT -1,
   qty real NOT NULL,
   subprice						double(24,8) DEFAULT 0 NOT NULL, 
   value_unit                   double(24,8) NOT NULL,          
   remise_percent real,
   vat_src_code					varchar(10)  DEFAULT '',		
   tva_tx						double(7,4),					
   localtax1_tx               	double(7,4)  DEFAULT 0,    		
   localtax1_type			 	varchar(10)	  	 NULL, 			
   localtax2_tx               	double(7,4)  DEFAULT 0,    		
   localtax2_type			 	varchar(10)	  	 NULL, 			
   total_ht double(24,8) DEFAULT 0 NOT NULL,
   total_tva double(24,8) DEFAULT 0 NOT NULL,
   total_localtax1				double(24,8)  	DEFAULT 0,		
   total_localtax2				double(24,8)	DEFAULT 0,		
   total_ttc double(24,8) DEFAULT 0 NOT NULL,
   date date NOT NULL,
   info_bits					integer DEFAULT 0,				
   special_code					integer DEFAULT 0,			    
   fk_multicurrency             integer,
   multicurrency_code           varchar(3),
   multicurrency_subprice       double(24,8) DEFAULT 0,
   multicurrency_total_ht       double(24,8) DEFAULT 0,
   multicurrency_total_tva      double(24,8) DEFAULT 0,
   multicurrency_total_ttc      double(24,8) DEFAULT 0,
   fk_facture					integer DEFAULT 0,				
   fk_ecm_files        integer DEFAULT NULL,			
   fk_code_ventilation			integer DEFAULT 0,
   rang							integer DEFAULT 0,				
   import_key					varchar(14),
   rule_warning_message text
) ENGINE=innodb;
