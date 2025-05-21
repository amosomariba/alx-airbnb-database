# Advanced SQL Joins Queries

## 📖 Overview

This script demonstrates advanced SQL join operations on the Airbnb database. It includes examples of inner joins, left joins, right joins, and the use of `UNION` to combine query results. These queries are useful for retrieving related data across multiple tables and for comprehensive data analysis.

---

## 📂 File

- **`joins_queries.sql`**: Contains SQL queries showcasing different types of joins between tables such as `Booking`, `User`, `Property`, and `Review`.

---

## 📝 Queries Included

1. **Inner Join**  
   Retrieves records that have matching values in both `Booking` and `User` tables.

2. **Left Join**  
   Retrieves all properties and their associated reviews, including properties with no reviews.

3. **Union of Left and Right Joins**  
   Combines results from left and right joins between `Booking` and `User` to ensure all records from both tables are included.

---

## 🚀 How to Use

1. Ensure you are connected to the `airbnb_db` database.
2. Open your SQL client or database management tool.
3. Run the queries in `joins_queries.sql` to explore join operations and their results.

---
