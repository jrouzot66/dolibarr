



















ALTER TABLE llx_prelevement_demande ADD INDEX idx_prelevement_demande_fk_facture (fk_facture);
ALTER TABLE llx_prelevement_demande ADD INDEX idx_prelevement_demande_fk_facture_fourn (fk_facture_fourn);
ALTER TABLE llx_prelevement_demande ADD INDEX idx_prelevement_demande_ext_payment_id (ext_payment_id);
