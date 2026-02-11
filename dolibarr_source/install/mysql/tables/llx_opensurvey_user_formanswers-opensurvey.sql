
















CREATE TABLE llx_opensurvey_user_formanswers (
    fk_user_survey INTEGER NOT NULL,
    fk_question INTEGER NOT NULL,
    reponses TEXT
) ENGINE=innodb;
