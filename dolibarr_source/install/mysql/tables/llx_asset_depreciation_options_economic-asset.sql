






















CREATE TABLE llx_asset_depreciation_options_economic(
    rowid                               integer         AUTO_INCREMENT PRIMARY KEY NOT NULL,
    fk_asset							integer,
    fk_asset_model						integer,

    depreciation_type					smallint		DEFAULT 0 NOT NULL,		
    accelerated_depreciation_option		boolean DEFAULT false,								
    degressive_coefficient				double(24,8),
    duration							smallint		NOT NULL,
    duration_type						smallint		DEFAULT 0  NOT NULL,	

	amount_base_depreciation_ht			double(24,8),
	amount_base_deductible_ht			double(24,8),
	total_amount_last_depreciation_ht	double(24,8),

	tms                                 timestamp       DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	fk_user_modif						integer
) ENGINE=innodb;
