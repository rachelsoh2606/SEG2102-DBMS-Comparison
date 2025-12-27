-- Q1
SELECT * FROM transactions_100k WHERE region = 'Asia';
SELECT * FROM transactions_500k WHERE region = 'Asia';
SELECT * FROM transactions_1000k WHERE region = 'Asia';

-- Q2
SELECT * FROM transactions_100k WHERE amount BETWEEN 100 AND 500;
SELECT * FROM transactions_500k WHERE amount BETWEEN 100 AND 500;
SELECT * FROM transactions_1000k WHERE amount BETWEEN 100 AND 500;

-- Q3
SELECT category, SUM(amount) AS total_amount FROM transactions_100k GROUP BY category;
SELECT category, SUM(amount) AS total_amount FROM transactions_500k GROUP BY category;
SELECT category, SUM(amount) AS total_amount FROM transactions_1000k GROUP BY category;

-- Q4
SELECT * FROM transactions_100k ORDER BY amount DESC LIMIT 10;
SELECT * FROM transactions_500k ORDER BY amount DESC LIMIT 10;
SELECT * FROM transactions_1000k ORDER BY amount DESC LIMIT 10;

