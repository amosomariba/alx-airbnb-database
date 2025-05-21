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
# Advanced SQL ```subqueries.sql```

## 📖 Overview

This script demonstrates the use of subqueries in SQL to perform advanced data retrieval from the Airbnb database. Subqueries allow you to filter and aggregate data based on the results of other queries, enabling more complex and insightful analysis.

---

## 📂 File

- **`subqueries.sql`**: Contains SQL queries that utilize subqueries for filtering and aggregation on tables such as `Property`, `Review`, `User`, and `Booking`.

---

## 📝 Queries Included

1. **Properties with High Average Ratings**  
   Retrieves all properties that have an average review rating greater than 4.0 using a subquery with `GROUP BY` and `HAVING`.

2. **Users with Multiple Bookings**  
   Retrieves all users who have made more than three bookings, using a subquery to count bookings per user.

---

## 🚀 How to Use

1. Ensure you are connected to the `airbnb_db` database.
2. Open your SQL client or database management tool.
3. Run the queries in `subqueries.sql` to explore subquery operations and their results.

---

# Aggregations and Window Functions SQL Script

## 📖 Overview

This script demonstrates the use of aggregation functions and window functions in SQL to analyze data in the Airbnb database. These queries help summarize data and provide advanced analytics, such as ranking and counting.

---

## 📂 File

- **`aggregations_and_window_functions.sql`**: Contains SQL queries that use aggregation (`COUNT`, `GROUP BY`) and window functions (`RANK`, `ROW_NUMBER`) on tables like `Booking` and `Property`.

---

## 📝 Queries Included

1. **Total Bookings per User**  
   Uses `COUNT` and `GROUP BY` to find the total number of bookings made by each user.

2. **Ranking Properties by Bookings**  
   Uses the `RANK()` window function to rank properties based on the total number of bookings they have received.

---

## 🚀 How to Use

1. Ensure you are connected to the `airbnb_db` database.
2. Open your SQL client or database management tool.
3. Run the queries in `aggregations_and_window_functions.sql` to explore aggregation and window function operations.

---

