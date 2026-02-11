





















create table llx_c_type_fees
(
  id        		integer      AUTO_INCREMENT PRIMARY KEY,
  code      		varchar(12)  NOT NULL,
  label				varchar(128),
  type				integer DEFAULT 0,		
  accountancy_code	varchar(32) NULL,
  active    		tinyint DEFAULT 1   NOT NULL,
  module    		varchar(32) NULL,
  position          integer NOT NULL DEFAULT 0
)ENGINE=innodb;
