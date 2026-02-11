

















ALTER TABLE llx_categorie_lang ADD UNIQUE INDEX uk_category_lang (fk_category, lang);
ALTER TABLE llx_categorie_lang ADD CONSTRAINT fk_category_lang_fk_category 	FOREIGN KEY (fk_category) REFERENCES llx_categorie (rowid);
