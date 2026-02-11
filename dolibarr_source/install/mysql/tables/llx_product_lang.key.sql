


















ALTER TABLE llx_product_lang ADD UNIQUE INDEX uk_product_lang (fk_product, lang);


ALTER TABLE llx_product_lang ADD CONSTRAINT fk_product_lang_fk_product 	FOREIGN KEY (fk_product) REFERENCES llx_product (rowid);
