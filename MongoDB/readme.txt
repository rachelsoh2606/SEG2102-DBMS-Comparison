This readme outlines the steps required to reproduce the results in MongoDB

Firstly, you can check the execution time of each query without optimization by adding ".explain("executionStats")" at the end of your query (refer to get_execution_time.sql)

Example:
db.transactions_100k.find({ region: "Asia" }).explain("executionStats");

Then, to view the execution time of each query after optimization, first create an index (refer to create_index.sql), then query again.

Example:
  1. db.transactions_100k.createIndex({ region: 1 });
  2. db.transactions_100k.find({ region: "Asia" }).explain("executionStats");