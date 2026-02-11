

















CREATE TABLE llx_c_format_cards
(
  rowid integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
  code varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  paper_size varchar(20) NOT NULL,
  orientation varchar(1) NOT NULL,
  metric varchar(5) NOT NULL,
  leftmargin double(24,8) NOT NULL,
  topmargin double(24,8) NOT NULL,
  nx integer NOT NULL,
  ny integer NOT NULL,
  spacex double(24,8) NOT NULL,
  spacey double(24,8) NOT NULL,
  width double(24,8) NOT NULL,
  height double(24,8) NOT NULL,
  font_size integer NOT NULL,
  custom_x double(24,8) NOT NULL,
  custom_y double(24,8) NOT NULL,
  active integer NOT NULL
) ENGINE=innodb;
