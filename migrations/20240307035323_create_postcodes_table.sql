DROP TABLE IF EXISTS paf_postcodes;
CREATE TABLE paf_postcodes (
  postcode varchar(16) NOT NULL,
  locality varchar(70) DEFAULT NULL,
  state varchar(50) DEFAULT NULL,
  country_code varchar(4) NOT NULL DEFAULT '036',
  is_pobag smallint DEFAULT '0',
  is_pobox smallint DEFAULT '0',
  is_gpo smallint DEFAULT '0',
  latitude decimal(10,8) DEFAULT NULL,
  longitude decimal(11,8) DEFAULT NULL,
  category varchar(20) DEFAULT NULL,
  comments varchar(255) DEFAULT NULL
);

CREATE UNIQUE INDEX u_postcode_locality_state_country_code_state ON paf_postcodes (postcode, locality, state, country_code);

CREATE INDEX idx_postcode_country_code ON paf_postcodes (postcode, country_code);
CREATE INDEX idx_postcode_state_country_code ON paf_postcodes (postcode, state, country_code);
CREATE INDEX idx_latitude_longitude ON paf_postcodes (latitude, longitude);

