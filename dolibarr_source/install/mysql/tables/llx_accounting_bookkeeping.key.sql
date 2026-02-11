

















ALTER TABLE llx_accounting_bookkeeping ADD INDEX idx_accounting_bookkeeping_fk_doc (fk_doc);
ALTER TABLE llx_accounting_bookkeeping ADD INDEX idx_accounting_bookkeeping_fk_docdet (fk_docdet);
ALTER TABLE llx_accounting_bookkeeping ADD INDEX idx_accounting_bookkeeping_doc_date (doc_date);
ALTER TABLE llx_accounting_bookkeeping ADD INDEX idx_accounting_bookkeeping_numero_compte (numero_compte, entity);
ALTER TABLE llx_accounting_bookkeeping ADD INDEX idx_accounting_bookkeeping_code_journal (code_journal, entity);
ALTER TABLE llx_accounting_bookkeeping ADD INDEX idx_accounting_bookkeeping_piece_num (piece_num, entity);



