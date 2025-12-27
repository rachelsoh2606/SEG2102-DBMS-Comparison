--Q1
db.transactions_100k.createIndex({ region: 1 });
db.transactions_500k.createIndex({ region: 1 });
db.transactions_1M.createIndex({ region: 1 });

--Q2
db.transactions_100k.createIndex({ amount: 1 });
db.transactions_500k.createIndex({ amount: 1 });
db.transactions_1M.createIndex({ amount: 1 });

--Q3
db.transactions_100k.createIndex({ category: 1 });
db.transactions_500k.createIndex({ category: 1 });
db.transactions_1M.createIndex({ category: 1});

--Q4
db.transactions_100k.createIndex({ amount: -1 });
db.transactions_500k.createIndex({ amount: -1 });
db.transactions_1M.createIndex({ amount: -1 });
