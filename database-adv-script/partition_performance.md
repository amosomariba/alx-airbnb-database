**partitioning** on the `Booking` table based on the `start_date` column:

---

### 📝 **Performance Improvement Report**

#### 📌 **Objective**

To improve query performance on the `Booking` table by implementing **partitioning** based on the `start_date` column and testing the impact using `EXPLAIN`.

---

### 🛠 **Steps Taken**

1. **Partitioned the `Booking` table** by `start_date` using range-based partitions (e.g., one partition per year).
2. Created **test queries** filtering by `start_date` and joined with `User` and `Property`.
3. Measured query performance **before and after partitioning** using `EXPLAIN`.

---

### ⚙️ **Before Partitioning (Observations)**

* Queries scanned the **entire table**, regardless of the `start_date` filter.
* **Full table scans** occurred even when only a small date range was needed.
* **Higher row count** estimates in the `EXPLAIN` plan.
* Slower performance on date range queries due to scanning unnecessary data.

---

### ⚡ **After Partitioning (Improvements)**

* `EXPLAIN` showed **only the relevant partition** was accessed (e.g., `p2024`).
* Queries **skipped unrelated partitions**, reducing disk I/O and processing time.
* **Fewer rows scanned**, as visible in the `rows` column of the execution plan.
* Queries executed **faster**, especially those filtering by `start_date`.

---

### 📊 **Key Benefits Observed**

* **Query execution time** significantly reduced (especially on large datasets).
* **Improved scalability**: future growth in bookings won't affect historical queries.
* **Better resource usage**: CPU and memory load decreased during date-range queries.

---

### ✅ **Conclusion**

Partitioning the `Booking` table based on `start_date` effectively improved query performance for date-based queries. It's especially beneficial in large-scale booking systems where historical and future data need to be queried separately.

---

