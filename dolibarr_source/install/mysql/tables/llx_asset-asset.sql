






















CREATE TABLE llx_asset(
    rowid                   integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
    ref                     varchar(128)    NOT NULL,
    entity                  integer         DEFAULT 1 NOT NULL,
    label                   varchar(255),

    fk_asset_model          integer,

    reversal_amount_ht      double(24,8),
    acquisition_value_ht    double(24,8)    DEFAULT NULL,
    recovered_vat           double(24,8),

    reversal_date           date,

    date_acquisition        date            NOT NULL,
    date_start              date            NOT NULL,

    qty                     real            DEFAULT 1 NOT NULL,

    acquisition_type        smallint        DEFAULT 0 NOT NULL,
    asset_type              smallint        DEFAULT 0 NOT NULL,

    not_depreciated         boolean         DEFAULT false,

    disposal_date           date,
    disposal_amount_ht      double(24,8),
    fk_disposal_type        integer,
    disposal_depreciated    boolean         DEFAULT false,
    disposal_subject_to_vat boolean         DEFAULT false,

    note_public             text,
    note_private            text,

    date_creation           datetime        NOT NULL,
    tms                     timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    fk_user_creat           integer         NOT NULL,
    fk_user_modif           integer,
    last_main_doc           varchar(255),
    import_key              varchar(14),
    model_pdf               varchar(255),
    status                  integer         NOT NULL
) ENGINE=innodb;
