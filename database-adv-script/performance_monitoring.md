###  Check performance of a booking query

```EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pm.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pm ON b.booking_id = pm.booking_id
WHERE b.start_date BETWEEN '2024-01-01' AND '2024-12-31';
```

### Using `SHOW PROFILE` (only works if enabled in MySQL)
First, enable profiling:

```SET profiling = 1;```

Then run your query:
```
SELECT 
    b.booking_id,
    b.start_date,
    u.first_name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
WHERE b.status = 'confirmed';
```
Now check the profile:

```SHOW PROFILE FOR QUERY 1;```

You can also list all recent profiles:

```SHOW PROFILES;```


To identify **bottlenecks** in your SQL queries and suggest improvements, follow this structured approach using `EXPLAIN ANALYZE` or `SHOW PROFILE`:

---

### ✅ Step 1: **Run an EXPLAIN ANALYZE on Your Query**

#### Example Query:

```sql
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pm.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pm ON b.booking_id = pm.booking_id
WHERE b.start_date BETWEEN '2024-01-01' AND '2024-12-31';
```

---

### ✅ Step 2: **Identify Common Bottlenecks**

From the output, look for:

| Symptom                             | Meaning                          | Solution                                              |
| ----------------------------------- | -------------------------------- | ----------------------------------------------------- |
| `type = ALL`                        | Full table scan                  | Create/use index                                      |
| High `rows` count                   | Too many rows read               | Filter earlier with indexes                           |
| `key = NULL`                        | No index used                    | Add a relevant index                                  |
| `Using temporary`, `Using filesort` | Sorting or grouping inefficiency | Add index on ORDER BY / WHERE columns                 |
| Large time gap between steps        | Slow join or disk access         | Consider join order, partitioning, or denormalization |

---

### ✅ Step 3: **Suggested Changes**

#### 1. 🧱 **Add Indexes for Filtering and Joining**

Since you filter on `start_date` and join on `user_id`, `property_id`, and `booking_id`, add these indexes if not already created:

```sql
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
```

#### 2. 🛠 **Composite Index for WHERE + JOIN**

```sql
-- Helps with WHERE and JOIN together
CREATE INDEX idx_booking_user_property_date ON Booking(user_id, property_id, start_date);
```

#### 3. 🏗 **Partitioning**

If your `Booking` table is large, **partition it by `start_date`**, for example, by year or month:

```sql
ALTER TABLE Booking
PARTITION BY RANGE (YEAR(start_date)) (
  PARTITION p2022 VALUES LESS THAN (2023),
  PARTITION p2023 VALUES LESS THAN (2024),
  PARTITION p2024 VALUES LESS THAN (2025)
);
```

#### 4. 📉 **Denormalization (if needed)**

If `JOINs` are too costly and only limited fields are required (e.g., just name), you might consider caching them in the Booking table to reduce JOINs.

---

### ✅ Step 4: **Re-run the Query with EXPLAIN ANALYZE**

This lets you confirm:

* Indexes are now used (`key` column shows index name).
* Rows scanned are fewer.
* Total execution time is reduced.

---





