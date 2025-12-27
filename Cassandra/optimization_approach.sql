-- Unoptimized Approach Table Creation
CREATE TABLE queryopt.transactions_unoptimized_sort_1000k (
    transaction_id INT,
    amount DECIMAL,
    user_id INT,
    transaction_date DATE,
    category TEXT,
    region TEXT,
    PRIMARY KEY (transaction_id, amount)
) WITH CLUSTERING ORDER BY (amount DESC);


-- Optimized Approach Table Creation
CREATE TABLE queryopt.transactions_optimized_sort_1000k (
    dummy_bucket TEXT,
    amount DECIMAL,
    transaction_id INT,
    -- other columns --
    PRIMARY KEY (dummy_bucket, amount, transaction_id)
) WITH CLUSTERING ORDER BY (amount DESC, transaction_id ASC);

--Ingestion via AWK Pipeline: Since the source CSV doesn't have a dummy_bucket column, we inject it on the fly using awk:
cat transactions_1000k.csv | awk -F',' 'NR>1 {print "all," $0}' | cqlsh -e "COPY ... FROM STDIN"

-- Note: The difference between the two approaches lies in the table schema and the ingestion method.
-- where optimized_approach.sql introduces a dummy_bucket column to facilitate better sorting and querying performance.