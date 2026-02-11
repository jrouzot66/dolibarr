






















CREATE TABLE llx_asset_accountancy_codes_fiscal(
    rowid									integer			AUTO_INCREMENT PRIMARY KEY NOT NULL,
    fk_asset								integer,
    fk_asset_model							integer,

    accelerated_depreciation				varchar(32),
    endowment_accelerated_depreciation		varchar(32),
    provision_accelerated_depreciation		varchar(32),

    tms                                     timestamp       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    fk_user_modif							integer
) ENGINE=innodb;
