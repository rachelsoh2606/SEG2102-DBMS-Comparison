This readme outlines the steps required to reproduce the results in PostgreSQL

Firstly, you can check the execution time of each query without optimization by first running "EXPLAIN ANALYZE" in pgAdmin4's command line, then insert your query (refer to queries.sql).

Example:
EXPLAIN ANALYZE;
SELECT * FROM table SELECT * FROM transactions_100k WHERE region = 'Asia';

Then to view the execution time of each query after optimization: 
1. Firstly run the SQL script in index.sql
2. Then, run "EXPLAIN ANALYZE;"
3. Followed by your query (refer to queries.sql) 