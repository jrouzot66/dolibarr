

















ALTER TABLE llx_website_page ADD UNIQUE INDEX uk_website_page_url (fk_website, pageurl);

ALTER TABLE llx_website_page ADD CONSTRAINT fk_website_page_website FOREIGN KEY (fk_website) REFERENCES llx_website (rowid);

