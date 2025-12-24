CREATE KEYSPACE queryopt WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE queryopt;

CREATE TABLE transactions (
    transaction_id INT,
    user_id INT,
    transaction_date DATE,
    amount DECIMAL,
    category TEXT,
    region TEXT,
    PRIMARY KEY (transaction_id)
);

COPY transactions (transaction_id, user_id, transaction_date, amount, category, region)
FROM '/home/transactions_100k.csv'
WITH HEADER = TRUE;
