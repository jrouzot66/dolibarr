



































delete from llx_c_actioncomm where id in (1,2,3,4,5,6,8,9,10,11,30,31,40,50);










insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values (  1, 'AC_TEL',       'Phone call',       'system', NULL, 1, 2);
insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values (  2, 'AC_FAX',       'Send Fax',         'system', NULL, 0, 3);
insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values (  4, 'AC_EMAIL',     'Send Email',       'system', NULL, 0, 4);
insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values (  5, 'AC_RDV',       'Rendez-vous',      'system', NULL, 1, 1);
insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values (  6, 'AC_EMAIL_IN',  'Reception Email',  'system', NULL, 0, 4);
insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values ( 11, 'AC_INT',   'Intervention on site', 'system', NULL, 1, 4);



insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values ( 40, 'AC_OTH_AUTO', 'Other (automatically inserted events)', 'systemauto', NULL, 1, 20);
insert into llx_c_actioncomm (id, code, libelle, type, module, active, position) values ( 50, 'AC_OTH',      'Other (manually inserted events)',      'system',     NULL, 1, 5);

INSERT INTO llx_c_actioncomm (id, code, libelle, type, module, active, position) VALUES ( 60, 'AC_EO_ONLINECONF',  'Online/Virtual conference', 'module', 'conference@eventorganization', 1, 60);
INSERT INTO llx_c_actioncomm (id, code, libelle, type, module, active, position) VALUES ( 61, 'AC_EO_INDOORCONF',  'Indoor conference',         'module', 'conference@eventorganization', 1, 61);
INSERT INTO llx_c_actioncomm (id, code, libelle, type, module, active, position) VALUES ( 62, 'AC_EO_ONLINEBOOTH', 'Online/Virtual booth',      'module', 'booth@eventorganization', 1, 62);
INSERT INTO llx_c_actioncomm (id, code, libelle, type, module, active, position) VALUES ( 63, 'AC_EO_INDOORBOOTH', 'Indoor booth',              'module', 'booth@eventorganization', 1, 63);
