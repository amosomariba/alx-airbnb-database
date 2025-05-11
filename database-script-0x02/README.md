# Database Script 0x02: Seed Data

## 📖 Overview

This directory contains the SQL script required to populate the database with sample data for the Airbnb-like platform. The seed data provides realistic entries for testing and development purposes, ensuring the database is ready for queries and analysis.

---

## 📂 Files

- **`seed.sql`**: The SQL script to insert sample data into the database. It includes data for all tables, such as users, properties, bookings, payments, reviews, and messages.

---

## 🌱 Seed Data

The seed data includes:

1. **Users**: Sample users with roles such as guest, host, and admin.
2. **Properties**: Example property listings with details like name, description, location, and price per night.
3. **Bookings**: Sample bookings made by users for properties, including dates and total price.
4. **Payments**: Example payment records for bookings, including amounts and payment methods.
5. **Reviews**: Sample reviews for properties, including ratings and comments.
6. **Messages**: Example messages exchanged between users.

---

## 🚀 How to Use

1. Ensure the database schema has been created by running the `schema.sql` script from `database-script-0x01`.
2. Open your SQL client or database management tool.
3. Execute the `seed.sql` script to populate the database with sample data.

---

## 🛠️ Requirements

- MySQL or a compatible relational database system.
- SQL client for executing the script.

---

## 📜 License

This project is open-source and available for educational purposes.