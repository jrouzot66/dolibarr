




















ALTER TABLE llx_menu ADD INDEX idx_menu_menuhandler_type (menu_handler, type);

ALTER TABLE llx_menu ADD UNIQUE INDEX idx_menu_uk_menu (menu_handler, fk_menu, position, url, entity);

