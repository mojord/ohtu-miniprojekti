CREATE TABLE kayttajat (
    id SERIAL PRIMARY KEY,
    tunnus TEXT UNIQUE,
    salasana TEXT
);

CREATE TABLE lukuvinkit (
    id SERIAL PRIMARY KEY,
    nimi TEXT,
    url VARCHAR(2083),
    tekija TEXT references kayttajat(tunnus),
    piilotettu BOOLEAN
);
