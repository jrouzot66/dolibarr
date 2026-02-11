

















create table llx_payment_expensereport
(
  rowid                   integer AUTO_INCREMENT PRIMARY KEY,
  fk_expensereport        integer,
  datec                   datetime,           
  tms                     timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  datep                   datetime,           
  amount                  double(24,8) DEFAULT 0,
  fk_typepayment          integer NOT NULL,
  num_payment             varchar(50),
  note                    text,
  fk_bank                 integer NOT NULL,
  fk_user_creat           integer,            
  fk_user_modif           integer             
)ENGINE=innodb;
