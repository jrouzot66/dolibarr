


















ALTER TABLE llx_societe ADD UNIQUE INDEX uk_societe_prefix_comm(prefix_comm, entity);
ALTER TABLE llx_societe ADD UNIQUE INDEX uk_societe_code_client(code_client, entity);
ALTER TABLE llx_societe ADD UNIQUE INDEX uk_societe_code_fournisseur(code_fournisseur, entity);

ALTER TABLE llx_societe ADD UNIQUE INDEX uk_societe_barcode (barcode, fk_barcode_type, entity);

ALTER TABLE llx_societe ADD INDEX idx_societe_nom(nom);

ALTER TABLE llx_societe ADD INDEX idx_societe_user_creat(fk_user_creat);
ALTER TABLE llx_societe ADD INDEX idx_societe_user_modif(fk_user_modif);

ALTER TABLE llx_societe ADD INDEX idx_societe_stcomm(fk_stcomm);
ALTER TABLE llx_societe ADD INDEX idx_societe_pays(fk_pays);
ALTER TABLE llx_societe ADD INDEX idx_societe_account(fk_account);
ALTER TABLE llx_societe ADD INDEX idx_societe_prospectlevel(fk_prospectlevel);
ALTER TABLE llx_societe ADD INDEX idx_societe_typent(fk_typent);
ALTER TABLE llx_societe ADD INDEX idx_societe_forme_juridique(fk_forme_juridique);
ALTER TABLE llx_societe ADD INDEX idx_societe_shipping_method(fk_shipping_method);




