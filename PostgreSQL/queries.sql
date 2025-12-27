-- Q1
--transactions_100k
SELECT * FROM transactions_100k WHERE region = 'Asia';

--transactions_500k
SELECT * FROM transactions_500k WHERE region = 'Asia';

--transactions_1000k
SELECT * FROM transactions_1000k WHERE region = 'Asia';

-- Q2
--transactions_100k
SELECT * FROM transactions_100k WHERE amount BETWEEN 100 AND 500;

--transactions_500k
SELECT * FROM transactions_500k WHERE amount BETWEEN 100 AND 500;

--transactions_1000k
SELECT * FROM transactions_1000k WHERE amount BETWEEN 100 AND 500;

-- Q3
--transactions_100k
SELECT category, SUM(amount) AS total_amount FROM transactions_100k GROUP BY category;

--transactions_500k
SELECT category, SUM(amount) AS total_amount FROM transactions_500k GROUP BY category;

--transactions_1000k
SELECT category, SUM(amount) AS total_amount FROM transactions_1000k GROUP BY category;

-- Q4
--transactions_100k
SELECT * FROM transactions_100k ORDER BY amount DESC LIMIT 10;

--transactions_500k
SELECT * FROM transactions_500k ORDER BY amount DESC LIMIT 10;

--transactions_1000k
SELECT * FROM transactions_1000k ORDER BY amount DESC LIMIT 10;

