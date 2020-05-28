DROP TABLE transactions;

DROP TABLE accounts;

CREATE TABLE accounts(
    id SERIAL PRIMARY KEY,
    email VARCHAR UNIQUE NOT NULL,
    passwd VARCHAR NOT NULL
);

CREATE TABLE transactions(
    id SERIAL PRIMARY KEY,
    account_id INTEGER NOT NULL,
    amount INTEGER
);

ALTER TABLE transactions ADD CONSTRAINT account_id_constraint FOREIGN KEY (account_id) REFERENCES accounts;