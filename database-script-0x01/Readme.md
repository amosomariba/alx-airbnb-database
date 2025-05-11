# Database Script 0x01: Schema

## 📖 Overview

This directory contains the SQL script required to create the database schema for the Airbnb-like platform. The schema defines the structure of the database, including tables, columns, data types, and relationships between tables.

---

## 📂 Files

- **`schema.sql`**: The SQL script to create the database schema. It includes the definitions for all tables, primary keys, foreign keys, and constraints.

---

## 🗄️ Database Schema

The schema includes the following tables:

1. **User**: Stores user information such as name, email, and role (guest, host, admin).
2. **Property**: Contains property details like name, description, location, and price per night.
3. **Booking**: Tracks bookings made by users for properties, including dates and total price.
4. **Payment**: Records payment details for bookings, including amount and payment method.
5. **Review**: Stores user reviews for properties, including ratings and comments.
6. **Message**: Handles messaging between users.

---

## 🚀 How to Use

1. Open your SQL client or database management tool.
2. Execute the `schema.sql` script to create the database schema.

---

## 🛠️ Requirements

- MySQL or a compatible relational database system.
- SQL client for executing the script.

---

## 📜 License

This project is open-source and available for educational purposes.