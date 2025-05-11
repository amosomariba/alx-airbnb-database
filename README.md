# Airbnb Database Project

## 📖 Overview

This project implements a relational database for an Airbnb-like platform. It includes the schema, seed data, and normalization steps to ensure the database is efficient, scalable, and adheres to best practices.

The database supports core functionalities such as user management, property listings, bookings, payments, reviews, and messaging between users.

---

## 📂 Project Structure
Collecting workspace information```markdown
# Airbnb Database Project

## 📖 Overview

This project implements a relational database for an Airbnb-like platform. It includes the schema, seed data, and normalization steps to ensure the database is efficient, scalable, and adheres to best practices.

The database supports core functionalities such as user management, property listings, bookings, payments, reviews, and messaging between users.

---

## 📂 Project Structure

```
normalization.md          # Documentation on database normalization
README.md                 # Project overview and documentation
database-script-0x01/
    schema.sql            # SQL script to create the database schema
database-script-0x02/
    seed.sql              # SQL script to populate the database with sample data
ERD/
    airbnb_erd.png        # Entity-Relationship Diagram (ERD)
    requirements.md       # Requirements and design considerations
```

---

## 🗄️ Database Schema

The database consists of the following tables:

1. **User**: Stores user information such as name, email, and role (guest, host, admin).
2. **Property**: Contains property details like name, description, location, and price per night.
3. **Booking**: Tracks bookings made by users for properties, including dates and total price.
4. **Payment**: Records payment details for bookings, including amount and payment method.
5. **Review**: Stores user reviews for properties, including ratings and comments.
6. **Message**: Handles messaging between users.

For detailed schema definitions, see [schema.sql](database-script-0x01/schema.sql).

---

## 🌱 Seed Data

Sample data is provided in [seed.sql](database-script-0x02/seed.sql) to populate the database with realistic entries for testing and development purposes. This includes:

- Users (guests, hosts, and admin)
- Properties
- Bookings
- Payments
- Reviews
- Messages

---

## 🔍 Normalization

The database has been normalized to **Third Normal Form (3NF)** to eliminate redundancy and ensure data integrity. For a detailed explanation, refer to [normalization.md](normalization.md).

---

## 📊 Entity-Relationship Diagram (ERD)

The ERD visually represents the relationships between tables in the database. See [airbnb_erd.png](ERD/airbnb_erd.png) for the diagram.

---

## 🚀 How to Use

1. **Set up the database**:
   - Run the schema script: `database-script-0x01/schema.sql`
   - Populate the database: `database-script-0x02/seed.sql`

2. **Explore the data**:
   - Query the tables to retrieve and analyze data.

3. **Extend the functionality**:
   - Add new features or modify the schema as needed.

---

## 🛠️ Requirements

- MySQL or a compatible relational database system.
- SQL client for executing scripts.

---

## 📜 License

This project is open-source and available for educational purposes.
```
