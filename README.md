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
  schema.sql
  queries.sql
  results/ → query plans (EXPLAIN ANALYZE) for Q1–Q4

mongodb/
  index_setup.js
  queries.js
  results/ → execution stats (.explain("executionStats"))

cassandra/
  schema.cql
  queries.cql
  results/ → query timing outputs for Q1–Q4

data/
  generate_dataset.py
  datasets: 100k.csv, 500k.csv, 1M.csv

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

