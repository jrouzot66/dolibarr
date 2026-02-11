



















ALTER TABLE llx_deliverydet ADD INDEX idx_deliverydet_fk_delivery (fk_delivery);
ALTER TABLE llx_deliverydet ADD CONSTRAINT fk_deliverydet_fk_delivery FOREIGN KEY (fk_delivery) REFERENCES llx_delivery (rowid);
