import csv
import random
from datetime import datetime, timedelta

# ===== CONFIGURATION =====
NUM_ROWS = 1_000_000     # Change to 500_000 or 1_000_000
OUTPUT_FILE = "transactions_1000k.csv"

# ===== POSSIBLE VALUES =====
CATEGORIES = ["Food", "Electronics", "Clothing", "Transport", "Health"]
REGIONS = ["Asia", "Europe", "America", "Africa"]

START_DATE = datetime(2023, 1, 1)
END_DATE = datetime(2024, 12, 31)

# ===== HELPER FUNCTION =====
def random_date(start, end):
    delta = end - start
    random_days = random.randint(0, delta.days)
    return start + timedelta(days=random_days)

# ===== CSV GENERATION =====
with open(OUTPUT_FILE, mode="w", newline="", encoding="utf-8") as file:
    writer = csv.writer(file)
    
    # CSV HEADER
    writer.writerow([
        "transaction_id",
        "user_id",
        "transaction_date",
        "amount",
        "category",
        "region"
    ])
    
    for i in range(1, NUM_ROWS + 1):
        writer.writerow([
            i,
            random.randint(1, 50_000),                         # user_id
            random_date(START_DATE, END_DATE).date(),          # transaction_date
            round(random.uniform(5, 5000), 2),                 # amount
            random.choice(CATEGORIES),                          # category
            random.choice(REGIONS)                              # region
        ])

print(f"Dataset generated: {OUTPUT_FILE} ({NUM_ROWS} rows)")
