

































insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_NOT_INSTALLED','1','chaine','Setup is running',1,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_FEATURES_LEVEL','0','chaine','Level of features to show: -1=stable+deprecated, 0=stable only (default), 1=stable+experimental, 2=stable+experimental+development',1,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAILING_LIMIT_SENDBYWEB','25','chaine','Number of targets to defined packet size when sending mass email',1,0);



insert into llx_const (name, value, type, note, visible, entity) values ('SYSLOG_HANDLERS','["mod_syslog_file"]','chaine','Which logger to use',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('SYSLOG_FILE','DOL_DATA_ROOT/dolibarr.log','chaine','Directory where to write log file',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('SYSLOG_LEVEL','7','chaine','Level of debug info to show',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_UPLOAD_DOC','2048','chaine','Max size for file upload (0 means no upload allowed)',0,0);


insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_ENABLE_OVERWRITE_TRANSLATION','1','chaine','Enable translation overwrite',0,1);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_ENABLE_DEFAULT_VALUES','1','chaine','Enable default value overwrite',0,1);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MONNAIE','EUR','chaine','Currency',0,1);

insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MAIL_SMTP_SERVER','','chaine','Host or ip address for SMTP server',0,1);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MAIL_SMTP_PORT','','chaine','Port for SMTP server',0,1);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MAIL_EMAIL_FROM','robot@domain.com','chaine','email emitter for Dolibarr automatic emails',0,1);




insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_SIZE_LISTE_LIMIT','20','chaine','Maximum length of lists',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_SIZE_SHORTLIST_LIMIT','3','chaine','Maximum length of short lists',0,0);

insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MENU_STANDARD','eldy_menu.php','chaine','Menu manager for internal users',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MENUFRONT_STANDARD','eldy_menu.php','chaine','Menu manager for external users',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MENU_SMARTPHONE','eldy_menu.php','chaine','Menu manager for internal users using smartphones',0,0);
insert into llx_const (name, value, type, note, visible, entity) values ('MAIN_MENUFRONT_SMARTPHONE','eldy_menu.php','chaine','Menu manager for external users using smartphones',0,0);

insert into llx_const (name, value, type, note, visible, entity) values ('THEME_ELDY_USEBORDERONTABLE', '1', 'chaine', 'Enable the border in theme',0,0);





insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_ACTIONS_TODO','7','chaine','Tolérance de retard avant alerte (en jours) sur actions planifiées non réalisées',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_ORDERS_TO_PROCESS','2','chaine','Tolérance de retard avant alerte (en jours) sur commandes clients non traitées',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS','7','chaine','Tolérance de retard avant alerte (en jours) sur commandes fournisseurs non traitées',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_PROPALS_TO_CLOSE','31','chaine','Tolérance de retard avant alerte (en jours) sur propales à cloturer',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_PROPALS_TO_BILL','7','chaine','Tolérance de retard avant alerte (en jours) sur propales non facturées',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_CUSTOMER_BILLS_UNPAYED','31','chaine','Tolérance de retard avant alerte (en jours) sur factures client impayées',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_SUPPLIER_BILLS_TO_PAY','2','chaine','Tolérance de retard avant alerte (en jours) sur factures fournisseur impayées',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_NOT_ACTIVATED_SERVICES','0','chaine','Tolérance de retard avant alerte (en jours) sur services à activer',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_RUNNING_SERVICES','0','chaine','Tolérance de retard avant alerte (en jours) sur services expirés',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_MEMBERS','31','chaine','Tolérance de retard avant alerte (en jours) sur cotisations adhérent en retard',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE','62','chaine','Tolérance de retard avant alerte (en jours) sur rapprochements bancaires à faire',0);
insert into llx_const (name, value, type, note, visible) values ('MAIN_DELAY_EXPENSEREPORTS_TO_PAY','31','chaine','Tolérance de retard avant alerte (en jours) sur les notes de frais impayées',0);






insert into llx_const (name, value, type, note, visible) values ('MAILING_EMAIL_FROM','no-reply@mydomain.com','chaine','EMail emmetteur pour les envois d emailings',0);





insert into llx_const (name, value, type, visible, entity) VALUES ('PRODUCT_ADDON_PDF_ODT_PATH',   'DOL_DATA_ROOT/doctemplates/products', 'chaine', 0, 1);
insert into llx_const (name, value, type, visible, entity) VALUES ('CONTRACT_ADDON_PDF_ODT_PATH',  'DOL_DATA_ROOT/doctemplates/contracts', 'chaine', 0, 1);
insert into llx_const (name, value, type, visible, entity) VALUES ('USERGROUP_ADDON_PDF_ODT_PATH', 'DOL_DATA_ROOT/doctemplates/usergroups', 'chaine', 0, 1);
insert into llx_const (name, value, type, visible, entity) VALUES ('USER_ADDON_PDF_ODT_PATH',      'DOL_DATA_ROOT/doctemplates/users', 'chaine', 0, 1);





INSERT INTO llx_const (name, entity, value, type, visible) VALUES ('PRODUCT_PRICE_BASE_TYPE', 0, 'HT', 'string', 0);





INSERT INTO llx_const (name, entity, value, type, visible) VALUES ('ADHERENT_LOGIN_NOT_REQUIRED', 0, '1', 'string', 0);

