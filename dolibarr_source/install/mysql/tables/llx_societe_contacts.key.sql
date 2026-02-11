

















ALTER TABLE llx_societe_contacts ADD UNIQUE INDEX idx_societe_contacts_idx1 (entity, fk_soc, fk_c_type_contact, fk_socpeople);
ALTER TABLE llx_societe_contacts ADD CONSTRAINT fk_societe_contacts_fk_c_type_contact FOREIGN KEY (fk_c_type_contact)  REFERENCES llx_c_type_contact(rowid);
ALTER TABLE llx_societe_contacts ADD CONSTRAINT fk_societe_contacts_fk_soc FOREIGN KEY (fk_soc)  REFERENCES llx_societe(rowid);
ALTER TABLE llx_societe_contacts ADD CONSTRAINT fk_societe_contacts_fk_socpeople FOREIGN KEY (fk_socpeople)  REFERENCES llx_socpeople(rowid);
