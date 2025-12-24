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
Database-Optimization-Study/
│
├── postgresql/
│      ├── schema.sql
│      ├── queries.sql
│      └── results/
│             ├── explain_Q1.txt
│             ├── explain_Q2.txt
│             ├── explain_Q3.txt
│             └── explain_Q4.txt
│
├── mongodb/
│      ├── index_setup.js
│      ├── queries.js
│      └── results/
│             ├── explain_Q1.json
│             ├── explain_Q2.json
│             ├── explain_Q3.json
│             └── explain_Q4.json
│
├── cassandra/
│      ├── schema.cql
│      ├── queries.cql
│      └── results/
│             ├── timing_Q1.txt
│             ├── timing_Q2.txt
│             ├── timing_Q3.txt
│             └── timing_Q4.txt
│
├── data/
│      ├── generate_dataset.py
│      ├── transactions_100k.csv
│      ├── transactions_500k.csv
│      └── transactions_1M.csv
│
└── report/
       ├── result_screenshots/
       ├── code_screenshots/
       └── discussion_figures/



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

