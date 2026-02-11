



















ALTER TABLE llx_boxes ADD UNIQUE INDEX uk_boxes (entity, box_id, position, fk_user);





ALTER TABLE llx_boxes ADD INDEX idx_boxes_boxid (box_id);
ALTER TABLE llx_boxes ADD CONSTRAINT fk_boxes_box_id FOREIGN KEY (box_id) REFERENCES llx_boxes_def (rowid);

ALTER TABLE llx_boxes ADD INDEX idx_boxes_fk_user (fk_user);
