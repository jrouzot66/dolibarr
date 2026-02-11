

















CREATE TABLE llx_c_holiday_types (
  rowid integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  code varchar(16) NOT NULL,
  label varchar(255) NOT NULL,
  affect integer NOT NULL,						
  delay integer NOT NULL,						
  newbymonth double(8,5) DEFAULT 0 NOT NULL, 
  fk_country integer DEFAULT NULL,			
  block_if_negative integer NOT NULL DEFAULT 0,
  sortorder smallint,
  active integer DEFAULT 1
) ENGINE=innodb;
