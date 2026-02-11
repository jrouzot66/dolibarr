























CREATE TABLE llx_asset_accountancy_codes_economic(
    rowid						integer			AUTO_INCREMENT PRIMARY KEY NOT NULL,
    fk_asset					integer,
    fk_asset_model				integer,

    asset						varchar(32),
    depreciation_asset			varchar(32),
    depreciation_expense		varchar(32),
    value_asset_sold			varchar(32),
    receivable_on_assignment	varchar(32),
    proceeds_from_sales			varchar(32),
    vat_collected				varchar(32),
    vat_deductible				varchar(32),
    tms                         timestamp       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    fk_user_modif				integer
) ENGINE=innodb;
