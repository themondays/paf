CREATE TABLE paf_rates (
    id SERIAL PRIMARY KEY,
    currency VARCHAR(3) NOT NULL UNIQUE,
    rate VARCHAR(16) NOT NULL,
    updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT (NOW() AT TIME ZONE 'utc') NOT NULL
);
