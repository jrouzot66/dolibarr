




















create table llx_object_lang
(
  rowid          integer AUTO_INCREMENT PRIMARY KEY,
  fk_object      integer      DEFAULT 0 NOT NULL,
  type_object    varchar(32)  NOT NULL,					
  property       varchar(32)  NOT NULL,					
  lang           varchar(5)   DEFAULT '' NOT NULL,
  value          text,
  import_key varchar(14) DEFAULT NULL
)ENGINE=innodb;
