--Q1
CREATE INDEX IF NOT EXISTS idx_region_100k ON transactions_100k(region);
CREATE INDEX IF NOT EXISTS idx_region_500k ON transactions_500k(region);
CREATE INDEX IF NOT EXISTS idx_region_1M ON transactions_1M(region);
