--Q1
db.transactions_100k.find({ region: "Asia" }).explain("executionStats");
db.transactions_500k.find({ region: "Asia" }).explain("executionStats");
db.transactions_1000k.find({ region: "Asia" }).explain("executionStats");


--Q2
db.transactions_100k.find({ amount: { $gte: 100, $lte: 500 } }).explain("executionStats");
db.transactions_500k.find({ amount: { $gte: 100, $lte: 500 } }).explain("executionStats");
db.transactions_1M.find({ amount: { $gte: 100, $lte: 500 } }).explain("executionStats");


--Q3
db.transactions_100k.aggregate([{ $group: { _id: "$category", total_amount: { $sum: "$amount" } } }]).explain("executionStats");
db.transactions_500k.aggregate([{ $group: { _id: "$category", total_amount: { $sum: "$amount" } } }]).explain("executionStats");
db.transactions_1000K.aggregate([{ $group: { _id: "$category", total_amount: { $sum: "$amount" } } }]).explain("executionStats");


--Q4
db.transactions_100k.find().sort({ amount: -1 }).limit(10).explain("executionStats");
db.transactions_500k.find().sort({ amount: -1 }).limit(10).explain("executionStats");
db.transactions_1000k.find().sort({ amount: -1 }).limit(10).explain("executionStats");
