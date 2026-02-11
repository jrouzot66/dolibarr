

















ALTER TABLE llx_product_attribute_combination ADD INDEX idx_product_att_com_product_parent (fk_product_parent);
ALTER TABLE llx_product_attribute_combination ADD INDEX idx_product_att_com_product_child (fk_product_child);
