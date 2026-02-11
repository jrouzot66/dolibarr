


















CREATE TABLE llx_c_incoterms (
  rowid integer AUTO_INCREMENT PRIMARY KEY,
  code varchar(3) NOT NULL,
  label varchar(100),
  libelle varchar(255) NOT NULL,
  active tinyint DEFAULT 1  NOT NULL
) ENGINE=innodb;

