

















create table llx_societe_prices
(
  rowid              integer AUTO_INCREMENT PRIMARY KEY,
  fk_soc             integer   DEFAULT 0,
  tms                timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
  datec	             datetime,
  fk_user_author     integer,
  price_level        tinyint   DEFAULT 1
)ENGINE=innodb;
