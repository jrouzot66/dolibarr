



















ALTER TABLE llx_stock_mouvement ADD INDEX idx_stock_mouvement_fk_product (fk_product);

ALTER TABLE llx_stock_mouvement ADD INDEX idx_stock_mouvement_fk_entrepot (fk_entrepot);
