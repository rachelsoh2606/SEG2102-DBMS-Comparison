-- Indexes for Query Optimization Experiments (Q1–Q4)

-- Q1: Equality filter on region
CREATE INDEX idx_region_100k ON transactions_100k(region);
CREATE INDEX idx_region_500k ON transactions_500k(region);
CREATE INDEX idx_region_1M   ON transactions_1M(region);

-- Q2: Range query on amount
CREATE INDEX idx_amount_100k ON transactions_100k(amount);
CREATE INDEX idx_amount_500k ON transactions_500k(amount);
CREATE INDEX idx_amount_1M   ON transactions_1M(amount);

-- Q3: Aggregation GROUP BY category + sum on amount
CREATE INDEX idx_category_amount_100k ON transactions_100k(category, amount);
CREATE INDEX idx_category_amount_500k ON transactions_500k(category, amount);
CREATE INDEX idx_category_amount_1M   ON transactions_1M(category, amount);

-- Q4: Sort + Limit (top 10 by amount)
CREATE INDEX idx_amount_desc_100k ON transactions_100k(amount DESC);
CREATE INDEX idx_amount_desc_500k ON transactions_500k(amount DESC);
CREATE INDEX idx_amount_desc_1M   ON transactions_1M(amount DESC);
