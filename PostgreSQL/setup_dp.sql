CREATE DATABASE queryopt;

\c queryopt;

CREATE TABLE transactions (
    user_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    category VARCHAR(50),
    region VARCHAR(50)
);

-- import data
COPY transactions FROM 'C:/dataset/transactions_100k.csv' DELIMITER ',' CSV HEADER;