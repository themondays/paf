DROP TABLE IF EXISTS paf_states;

CREATE TABLE paf_states (
  state_code varchar(50) NOT NULL,
  state_name varchar(100) DEFAULT NULL,
  country varchar(2) NOT NULL,
  country_code varchar(4) NOT NULL,
  tz_name varchar(20) NOT NULL,
  tz_offset varchar(6) NOT NULL
);

ALTER TABLE paf_states ADD CONSTRAINT idx_country_code_state_code UNIQUE (country_code, state_code);

CREATE INDEX idx_country ON paf_states (country);
CREATE INDEX idx_country_code ON paf_states (country_code);
CREATE INDEX idx_tz_offset ON paf_states (tz_offset);

INSERT INTO paf_states VALUES ('ACT','Australian Capital Territory','au','036','Australia/Sydney','+11:00'),('NSW','New South Wales','au','036','Australia/Sydney','+11:00'),('NT','Northern Territory','au','036','Australia/North','+09:30'),('QLD','Queensland','au','036','Australia/Queensland','+10:00'),('SA','South Australia','au','036','Australia/South','+10:30'),('TAS','Tasmania','au','036','Australia/Tasmania','+10:00'),('VIC','Victoria','au','036','Australia/Victoria','+10:00'),('WA','Western Australia','au','036','Australia/West','+08:00');
