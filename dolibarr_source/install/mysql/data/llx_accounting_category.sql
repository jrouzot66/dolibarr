



















INSERT INTO llx_c_accounting_category (rowid, code, label, range_account, sens, category_type, formula, position, fk_country, active) VALUES (  1, 'INCOMES',   'Income of products/services',               'Example: 7xxxxx', 0, 0, '',                 '10', 0, 1);
INSERT INTO llx_c_accounting_category (rowid, code, label, range_account, sens, category_type, formula, position, fk_country, active) VALUES (  2, 'EXPENSES',  'Expenses of products/services',             'Example: 6xxxxx', 0, 0, '',                 '20', 0, 1);
INSERT INTO llx_c_accounting_category (rowid, code, label, range_account, sens, category_type, formula, position, fk_country, active) VALUES (  3, 'PROFIT',    'Balance',                                   '',                0, 1, 'INCOMES+EXPENSES', '30', 0, 1);

