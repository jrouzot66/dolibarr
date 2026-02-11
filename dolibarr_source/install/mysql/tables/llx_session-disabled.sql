


















create table llx_session
(
  session_id varchar(50) PRIMARY KEY,
  session_variable text,
  last_accessed datetime NOT NULL,
  fk_user integer NOT NULL,
  remote_ip varchar(64) NULL,
  user_agent varchar(255) NULL
)ENGINE=innodb;
