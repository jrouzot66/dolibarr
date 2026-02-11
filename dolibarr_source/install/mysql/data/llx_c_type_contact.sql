






































insert into llx_c_type_contact (element, source, code, libelle, active ) values ('contrat', 'internal', 'SALESREPSIGN',  'Commercial signataire du contrat', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('contrat', 'internal', 'SALESREPFOLL',  'Commercial suivi du contrat', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('contrat', 'external', 'BILLING',       'Contact client facturation contrat', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('contrat', 'external', 'CUSTOMER',      'Contact client suivi contrat', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('contrat', 'external', 'SALESREPSIGN',  'Contact client signataire contrat', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('propal',  'internal', 'SALESREPFOLL',  'Commercial à l''origine de la propale', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('propal',  'external', 'BILLING',       'Contact client facturation propale', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('propal',  'external', 'CUSTOMER',      'Contact client suivi propale', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('propal',  'external', 'SHIPPING',      'Contact client livraison propale', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('facture', 'internal', 'SALESREPFOLL',  'Responsable suivi du paiement', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('facture', 'external', 'BILLING',       'Contact client facturation', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('facture', 'external', 'SHIPPING',      'Contact client livraison', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('facture', 'external', 'SERVICE',       'Contact client prestation', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('invoice_supplier', 'internal', 'SALESREPFOLL',  'Responsable suivi du paiement', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('invoice_supplier', 'external', 'BILLING',       'Contact fournisseur facturation', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('invoice_supplier', 'external', 'SHIPPING',      'Contact fournisseur livraison', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('invoice_supplier', 'external', 'SERVICE',       'Contact fournisseur prestation', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('agenda', 'internal', 'ACTOR', 'Responsable', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('agenda', 'internal', 'GUEST', 'Guest', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('agenda', 'external', 'ACTOR', 'Responsable', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('agenda', 'external', 'GUEST', 'Guest', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('commande', 'internal', 'SALESREPFOLL',  'Responsable suivi de la commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('commande', 'external', 'BILLING',       'Contact client facturation commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('commande', 'external', 'CUSTOMER',      'Contact client suivi commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('commande', 'external', 'SHIPPING',      'Contact client livraison commande', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('fichinter', 'internal', 'INTERREPFOLL',  'Responsable suivi de l''intervention', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('fichinter', 'internal', 'INTERVENING',   'Intervenant', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('fichinter', 'external', 'BILLING',       'Contact client facturation intervention', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('fichinter', 'external', 'CUSTOMER',      'Contact client suivi de l''intervention', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('order_supplier', 'internal', 'SALESREPFOLL',  'Responsable suivi de la commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('order_supplier', 'internal', 'SHIPPING',      'Responsable réception de la commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('order_supplier', 'external', 'BILLING',       'Contact fournisseur facturation commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('order_supplier', 'external', 'CUSTOMER',      'Contact fournisseur suivi commande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('order_supplier', 'external', 'SHIPPING',      'Contact fournisseur livraison commande', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('dolresource', 'internal', 'USERINCHARGE',    'In charge of resource', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('dolresource', 'external', 'THIRDINCHARGE',   'In charge of resource', 1);


insert into llx_c_type_contact (element, source, code, libelle, active, module) values ('ticket', 'internal', 'SUPPORTTEC',  'Utilisateur contact support', 1, NULL);
insert into llx_c_type_contact (element, source, code, libelle, active, module) values ('ticket', 'internal', 'CONTRIBUTOR', 'Intervenant', 1, NULL);
insert into llx_c_type_contact (element, source, code, libelle, active, module) values ('ticket', 'external', 'SUPPORTCLI',  'Contact client suivi incident', 1, NULL);
insert into llx_c_type_contact (element, source, code, libelle, active, module) values ('ticket', 'external', 'CONTRIBUTOR', 'Intervenant', 1, NULL);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project', 'internal', 'PROJECTLEADER',      'Chef de Projet', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project', 'internal', 'PROJECTCONTRIBUTOR', 'Intervenant', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project', 'external', 'PROJECTLEADER',      'Chef de Projet', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project', 'external', 'PROJECTCONTRIBUTOR', 'Intervenant', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project_task', 'internal', 'TASKEXECUTIVE',   'Responsable', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project_task', 'internal', 'TASKCONTRIBUTOR', 'Intervenant', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project_task', 'external', 'TASKEXECUTIVE',   'Responsable', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('project_task', 'external', 'TASKCONTRIBUTOR', 'Intervenant', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('supplier_proposal', 'internal', 'SALESREPFOLL',  'Responsable suivi de la demande', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('supplier_proposal', 'external', 'BILLING',       'Contact fournisseur facturation', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('supplier_proposal', 'external', 'SHIPPING',      'Contact fournisseur livraison', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('supplier_proposal', 'external', 'SERVICE',       'Contact fournisseur prestation', 1);


insert into llx_c_type_contact (element, source, code, libelle, active ) values ('conferenceorbooth', 'internal', 'MANAGER',      'Conference or Booth manager', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('conferenceorbooth', 'external', 'SPEAKER',      'Conference Speaker', 1);
insert into llx_c_type_contact (element, source, code, libelle, active ) values ('conferenceorbooth', 'external', 'RESPONSIBLE',  'Booth responsible', 1);
