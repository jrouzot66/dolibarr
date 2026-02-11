
















ALTER TABLE llx_stocktransfer_stocktransfer ADD INDEX idx_stocktransfer_stocktransfer_rowid (rowid);
ALTER TABLE llx_stocktransfer_stocktransfer ADD INDEX idx_stocktransfer_stocktransfer_ref (ref);
ALTER TABLE llx_stocktransfer_stocktransfer ADD INDEX idx_stocktransfer_stocktransfer_fk_soc (fk_soc);
ALTER TABLE llx_stocktransfer_stocktransfer ADD INDEX idx_stocktransfer_stocktransfer_fk_project (fk_project);
ALTER TABLE llx_stocktransfer_stocktransfer ADD CONSTRAINT llx_stocktransfer_stocktransfer_fk_user_creat FOREIGN KEY (fk_user_creat) REFERENCES llx_user(rowid);
ALTER TABLE llx_stocktransfer_stocktransfer ADD INDEX idx_stocktransfer_stocktransfer_status (status);






