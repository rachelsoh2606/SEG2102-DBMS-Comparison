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
│ ├── schema.sql # Table and index creation scripts
│ ├── queries.sql # Query workload (Q1–Q4)
│ └── results/ # Explain plans & timing outputs
│
├── mongodb/
│ ├── schema_setup.js # Index creation scripts
│ ├── queries.js # Query workload + aggregation pipelines
│ └── results/ # executionStats explain outputs
│
├── cassandra/
│ ├── schema.cql # Query-driven table designs
│ ├── queries.cql # Workload queries (partition, clustering, pre-agg)
│ └── results/ # Query timing outputs
│
├── data/
│ ├── generate_dataset.py # Python script used to generate 100k / 500k / 1M datasets
│ ├── transactions_100k.csv
│ ├── transactions_500k.csv
│ └── transactions_1M.csv
│
└── report/


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

