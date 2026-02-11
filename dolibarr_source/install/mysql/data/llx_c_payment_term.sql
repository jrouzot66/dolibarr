



























insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (1 ,'RECEP',       1,1, 'Due upon receipt','Due upon receipt',0,1,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (2 ,'30D',         2,1, '30 days','Due in 30 days',0,30,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (3 ,'30DENDMONTH', 3,1, '30 days end of month','Due in 30 days, end of month',1,30,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (4 ,'60D',         4,1, '60 days','Due in 60 days, end of month',0,60,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (5 ,'60DENDMONTH', 5,1, '60 days end of month','Due in 60 days, end of month',1,60,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (6 ,'PT_ORDER',    6,1, 'Due on order','Due on order',0,1,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (7 ,'PT_DELIVERY', 7,1, 'Due on delivery','Due on delivery',0,1,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (8 ,'PT_5050',     8,1, '50 and 50','50% on order, 50% on delivery',0,1,NULL);


insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (9 ,'10D',         9,1,  '10 days','Due in 10 days',0,10,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (10,'10DENDMONTH', 10,1, '10 days end of month','Due in 10 days, end of month',1,10,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (11,'14D',         11,1, '14 days','Due in 14 days',0,14,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (12,'14DENDMONTH', 12,1, '14 days end of month','Due in 14 days, end of month',1,14,NULL);
insert into llx_c_payment_term(rowid, code, sortorder, active, libelle, libelle_facture, type_cdr, nbjour, deposit_percent) values (13,'DEP30PCTDEL', 13,0, '__DEPOSIT_PERCENT__% deposit','__DEPOSIT_PERCENT__% deposit, remainder on delivery',0,1,'30');
