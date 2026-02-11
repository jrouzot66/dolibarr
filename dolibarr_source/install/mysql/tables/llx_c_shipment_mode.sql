


















create table llx_c_shipment_mode
(
  rowid            integer AUTO_INCREMENT PRIMARY KEY,
  entity				   integer	DEFAULT 1 NOT NULL,	
  tms              timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  code             varchar(30) NOT NULL,
  libelle          varchar(128) NOT NULL,
  description      text,
  tracking         varchar(255) NULL,
  active           tinyint DEFAULT 0,
  module           varchar(32) NULL
)ENGINE=innodb;
