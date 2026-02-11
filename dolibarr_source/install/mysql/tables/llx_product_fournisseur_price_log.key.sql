

















ALTER TABLE llx_product_fournisseur_price_log ADD INDEX idx_product_fournisseur_price_log_fk_product_fournisseur (fk_product_fournisseur);
ALTER TABLE llx_product_fournisseur_price_log ADD INDEX idx_product_fournisseur_price_log_fk_user (fk_user);

