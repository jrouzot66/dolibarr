

















ALTER TABLE llx_categorie_website_page ADD PRIMARY KEY pk_categorie_website_page (fk_categorie, fk_website_page);
ALTER TABLE llx_categorie_website_page ADD INDEX idx_categorie_website_page_fk_categorie (fk_categorie);
ALTER TABLE llx_categorie_website_page ADD INDEX idx_categorie_website_page_fk_website_page (fk_website_page);

ALTER TABLE llx_categorie_website_page ADD CONSTRAINT fk_categorie_websitepage_categorie_rowid FOREIGN KEY (fk_categorie) REFERENCES llx_categorie (rowid);
ALTER TABLE llx_categorie_website_page ADD CONSTRAINT fk_categorie_websitepage_website_page_rowid FOREIGN KEY (fk_website_page) REFERENCES llx_website_page (rowid);

