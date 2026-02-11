

















CREATE TABLE llx_holiday_logs 
(
rowid             integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
date_action       DATETIME NOT NULL,
fk_user_action    integer NOT NULL,
fk_user_update    integer NOT NULL,
fk_type           integer NOT NULL,
type_action       VARCHAR( 255 ) NOT NULL,
prev_solde        VARCHAR( 255 ) NOT NULL,
new_solde         VARCHAR( 255 ) NOT NULL
) 
ENGINE=innodb;
