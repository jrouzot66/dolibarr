


















































































CREATE TABLE llx_asset_depreciation(
    rowid                           integer         AUTO_INCREMENT PRIMARY KEY NOT NULL,

    fk_asset                        integer         NOT NULL,
    depreciation_mode               varchar(255)	NOT NULL,	

    ref                             varchar(255)	NOT NULL,
    depreciation_date               datetime		NOT NULL,
    depreciation_ht                 double(24,8)	NOT NULL,
    cumulative_depreciation_ht      double(24,8)	NOT NULL,

    accountancy_code_debit          varchar(32),
    accountancy_code_credit         varchar(32),

    tms                             timestamp       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    fk_user_modif                   integer
) ENGINE=innodb;
