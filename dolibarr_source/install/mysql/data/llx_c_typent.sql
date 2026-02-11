































delete from llx_c_typent;

insert into llx_c_typent (id,code,libelle,fk_country,active) values (  1, 'TE_STARTUP', 'Start-up',      NULL, 0);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  2, 'TE_GROUP',   'Grand groupe',  NULL, 1);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  3, 'TE_MEDIUM',  'PME/PMI',       NULL, 1);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  4, 'TE_SMALL',   'TPE',           NULL, 1);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  5, 'TE_ADMIN',   'Administration',NULL, 1);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  6, 'TE_WHOLE',   'Grossiste',     NULL, 0);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  7, 'TE_RETAIL',  'Revendeur',     NULL, 0);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (  8, 'TE_PRIVATE', 'Particulier',   NULL, 1);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (100, 'TE_OTHER',   'Autres',        NULL, 1);

insert into llx_c_typent (id,code,libelle,fk_country,active) values (231, 'TE_A_RI',    'Responsable Inscripto (typo A)',    23, 0);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (232, 'TE_B_RNI',   'Responsable No Inscripto (typo B)', 23, 0);
insert into llx_c_typent (id,code,libelle,fk_country,active) values (233, 'TE_C_FE',    'Consumidor Final/Exento (typo C)',  23, 0);
