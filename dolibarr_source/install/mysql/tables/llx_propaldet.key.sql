




















ALTER TABLE llx_propaldet ADD INDEX idx_propaldet_fk_propal (fk_propal);
ALTER TABLE llx_propaldet ADD INDEX idx_propaldet_fk_product (fk_product);

ALTER TABLE llx_propaldet ADD CONSTRAINT fk_propaldet_fk_unit FOREIGN KEY (fk_unit) REFERENCES llx_c_units (rowid);
ALTER TABLE llx_propaldet ADD CONSTRAINT fk_propaldet_fk_propal FOREIGN KEY (fk_propal) REFERENCES llx_propal (rowid);
