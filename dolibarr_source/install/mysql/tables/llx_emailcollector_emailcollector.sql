















CREATE TABLE llx_emailcollector_emailcollector(
        
        rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
        entity integer DEFAULT 1 NOT NULL,
        ref varchar(128) NOT NULL,
        label varchar(255),
        description text,
        host varchar(255),
        port varchar(10) DEFAULT '993',
        hostcharset varchar(16) DEFAULT 'UTF-8',
        imap_encryption varchar(16) DEFAULT 'ssl',
        norsh integer DEFAULT 0,
        login varchar(128),
        acces_type integer DEFAULT 0,
        oauth_service varchar(128),
        password varchar(128),
        source_directory varchar(255) DEFAULT 'Inbox' NOT NULL,
        target_directory varchar(255),
        maxemailpercollect integer DEFAULT 100,
        datelastresult datetime,
        codelastresult varchar(16),
        lastresult text,
        datelastok datetime,
        note_public text,
        note_private text,
        date_creation datetime NOT NULL,
        tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        fk_user_creat integer NOT NULL,
        fk_user_modif integer,
        position INTEGER NOT NULL DEFAULT 0,
        import_key varchar(14),
        status integer NOT NULL
        
) ENGINE=innodb;
