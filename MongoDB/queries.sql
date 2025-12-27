-- Q1
--transactions_100K
db.transactions_100k.find({ region: "Asia" });

--transactions_500K
db.transactions_500k.find({ region: "Asia" });

--transactions_1000K
db.transactions_1000k.find({ region: "Asia" });

-- Q2
--transactions_100k
db.transactions_100k.find({ amount: { $gte: 100, $lte: 500 } });

--transactions_500k
db.transactions_500k.find({ amount: { $gte: 100, $lte: 500 } });

--transactions_1000K
db.transactions_1000k.find({ amount: { $gte: 100, $lte: 500 } });

--Q3
--transactions_100k
db.transactions_100k.aggregate([
  { $group: { _id: "$category", total_amount: { $sum: "$amount" } } }
]);

--transactions_500K
db.transactions_500k.aggregate([
  { $group: { _id: "$category", total_amount: { $sum: "$amount" } } }
]);

--transactions_1000K
db.transactions_1000K.aggregate([
  { $group: { _id: "$category", total_amount: { $sum: "$amount" } } }
]);

-- Q4
--transactions_100k
db.transactions_100k.find().sort({ amount: -1 }).limit(10);

-transactions_500K
db.transactions_500k.find().sort({ amount: -1 }).limit(10);

--transactions_1000K
db.transactions_1000k.find().sort({ amount: -1 }).limit(10);