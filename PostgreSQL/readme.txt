This readme outlines the steps required to reproduce the results in PostgreSQL

Firstly, you can check the execution time of each query without optimization by first running "EXPLAIN ANALYZE" in pgAdmin4's command line, then insert your query (refer tlo queries.sql).

Example:
EXPLAIN ANALYZE;
SELECT * FROM table SELECT * FROM transactions_100k WHERE region = 'Asia';

Then, to view the execution time of each query after optimization, first run the SQL script in index.sql, then run EXPLAIN ANALYZE, then your query. 