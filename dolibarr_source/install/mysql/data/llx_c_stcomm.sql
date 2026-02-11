































delete from llx_c_stcomm;
insert into llx_c_stcomm (id,code,libelle) values (-1, 'ST_NO',    'Do not contact');
insert into llx_c_stcomm (id,code,libelle) values ( 0, 'ST_NEVER', 'Never contacted');
insert into llx_c_stcomm (id,code,libelle) values ( 1, 'ST_TODO',  'To contact');
insert into llx_c_stcomm (id,code,libelle) values ( 2, 'ST_PEND',  'Contact in progress');
insert into llx_c_stcomm (id,code,libelle) values ( 3, 'ST_DONE',  'Contacted');
