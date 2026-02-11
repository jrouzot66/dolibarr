

















create table llx_prelevement_lignes
(
  rowid               integer AUTO_INCREMENT PRIMARY KEY,
  fk_prelevement_bons integer,
  fk_soc              integer NOT NULL,
  fk_user             integer NULL,
  
  statut              smallint DEFAULT 0,

  client_nom          varchar(255),
  amount              double(24,8) DEFAULT 0,
  code_banque         varchar(128),
  code_guichet        varchar(6),
  number              varchar(255),
  cle_rib             varchar(5),

  note                text,
  tms             	  timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=innodb;
