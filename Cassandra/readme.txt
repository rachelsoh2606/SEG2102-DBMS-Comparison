This guide outlines the methodology for comparing unoptimized vs. optimized query performance in Apache Cassandra using System Tracing and Data Bucketing.

Performance Tracking with System Traces
To measure the exact execution time and internal operations of your queries, we utilize Cassandra's internal tracing mechanism.

Steps to Benchmarking
Enable Tracing: Run TRACING ON; before your query.

Execute Query: Run your target CQL statement.

Analyze Sessions: Switch to the system_traces keyspace to view the duration and node activity.


-- Step 1: Enable tracing and run unoptimized query
cqlsh:queryopt > TRACING ON;
cqlsh:queryopt > SELECT * FROM transactions WHERE region = 'Asia' ALLOW FILTERING;

-- Step 2: View performance metrics
cqlsh:queryopt > USE system_traces;
cqlsh:system_traces > SELECT * FROM sessions;




Optimization Strategies
1. Secondary Indexing (Region-based)
To avoid the high cost of ALLOW FILTERING, we implement a Secondary Index. This allows Cassandra to locate specific regions without scanning the entire cluster.

Action: Run the scripts in create_index.sql.

Verification: Repeat the tracing steps above to compare the "Duration" field in system_traces.sessions.

2. Global Sorting via Dummy Bucketing
For global sorting (e.g., Top 10 transactions by amount), we use the Dummy Bucket technique. This forces related data into a single partition for efficient clustering order retrieval (refer to unoptimized_approach.sql and optimized_approach.sql)

Data Migration Pipeline
Since the raw dataset lacks a bucket column, we use an awk pipeline to inject the dummy_bucket value ('all') during the data transfer:

# Export from source -> Add "all" prefix -> Import to optimized table
docker exec -it cassandra cqlsh -e "COPY queryopt.transactions_unoptimized_sort_1000k (transaction_id, user_id, transaction_date, amount, category, region) TO STDOUT" \
| awk -F',' '{print "all," $0}' \
| docker exec -it cassandra cqlsh -e "COPY queryopt.transactions_optimized_sort_1000k (dummy_bucket, transaction_id, user_id, transaction_date, amount, category, region) FROM STDIN"

Results and Evidence
All result screenshots, execution plan logs, and performance comparison tables are stored in the /Assignment_Result.doc directory.
