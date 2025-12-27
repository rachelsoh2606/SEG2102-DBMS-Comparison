-- Q1
--transactions_100k
SELECT * FROM transactions_100k WHERE region = 'Asia' ALLOW FILTERING;

--transactions_500k
SELECT * FROM transactions_500k WHERE region = 'Asia' ALLOW FILTERING;

--transactions_1000k
SELECT * FROM transactions_1000k WHERE region = 'Asia' ALLOW FILTERING;

-- Q2
--transactions_100k
SELECT * FROM transactions_100k WHERE amount >= 100 AND amount <= 500 ALLOW FILTERING;

--transactions_500k
SELECT * FROM transactions_500k WHERE amount >= 100 AND amount <= 500 ALLOW FILTERING;

--transactions_1000k
SELECT * FROM transactions_1000k WHERE amount >= 100 AND amount <= 500 ALLOW FILTERING;

-- Q3
--transactions_100k
SELECT category, amount FROM transactions_100k ALLOW FILTERING;

--transactions_500k
SELECT category, amount FROM transactions_500k ALLOW FILTERING;

--transactions_1000k
SELECT category, amount FROM transactions_1000k ALLOW FILTERING;

-- Q4
--transactions_100k
SELECT * FROM transactions_100k ORDER BY amount DESC LIMIT 10 ALLOW FILTERING;

--transactions_500k
SELECT * FROM transactions_500k ORDER BY amount DESC LIMIT 10 ALLOW FILTERING;

--transactions_1000k
SELECT * FROM transactions_1000k ORDER BY amount DESC LIMIT 10 ALLOW FILTERING;
