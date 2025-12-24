# SEG2102-DBMS-Comparison
# Database Query Optimization Performance Study

## Project Overview
This project evaluates **query optimization techniques** (mainly indexing strategies) within three DBMS models:
- **PostgreSQL** (relational, ACID)
- **MongoDB** (document store, flexible schema)
- **Apache Cassandra** (distributed, query-driven design)

The study measures performance using synthetic transaction datasets of **100k, 500k, and 1M rows/documents**, focusing on:
- Equality and range filtering
- Aggregation performance
- Sorting + limiting
- Index impact on scalability and latency

📌 *The goal is not to compare which database is best, but to compare how optimization techniques improve query performance within each model.*

---

## Repository Structure
postgresql/
  index.sql
  query_Q1
  query_Q2
  query_Q3
  query_Q4
  explain
  results/ → query plans (EXPLAIN ANALYZE) for Q1–Q4

mongodb/
  index.js
  query_Q1
  query_Q2
  query_Q3
  query_Q4
  explain.js
  results/ → execution stats (.explain("executionStats"))

cassandra/
  import.js
  index_Q1.sql
  query_Q1
  query_Q2
  query_Q3
  query_Q4
  explain
  optimized_approach
  unoptimized_approach
  results/ → query timing outputs for Q1–Q4

data/
  generate_dataset.py
  transactions_100k.csv
  transactions_500k.csv
  transactions_1000k.csv

report/
  code_screenshots/
  result_screenshots/
  discussion_figures/


---

## System & Tools Used
- **OS:** Windows 10
- **Hardware:**
  - RAM: 16GB
  - CPU: Intel i5 (11th Gen)
- **Databases:** PostgreSQL, MongoDB, Cassandra (running via Docker containers)
- **Scripting:** Python (dataset generation + query automation)
- **Version Control:** GitHub (for transparency and reproducibility)

---

