CREATE TABLE paf_locales (
  display_order integer,
  name varchar(49) DEFAULT NULL,
  iso varchar(2) DEFAULT NULL,
  locale varchar(5) DEFAULT NULL
);

ALTER TABLE paf_locales ADD PRIMARY KEY (iso);

INSERT INTO paf_locales VALUES(1, 'English', 'en', 'en_AU');
