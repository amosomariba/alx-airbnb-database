-- Drop existing table if it exists (be careful in production)
DROP TABLE IF EXISTS Booking;

-- Recreate the Booking table with partitioning by RANGE on start_date
CREATE TABLE Booking (
    booking_id CHAR(36),
    property_id CHAR(36),
    user_id CHAR(36),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date), -- start_date must be part of the PRIMARY KEY for partitioning
    FOREIGN KEY (property_id) REFERENCES Property(property_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    INDEX (property_id),
    INDEX (booking_id)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pMax VALUES LESS THAN MAXVALUE
);


-- Testing the performance of the queries

-- 1. Sample Query: Fetch bookings by date range
EXPLAIN
SELECT *
FROM Booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

-- 2. Another Example: Fetch recent confirmed bookings
EXPLAIN
SELECT *
FROM Booking
WHERE start_date >= '2024-01-01'
  AND status = 'confirmed';

-- 3. Query using JOIN for context

EXPLAIN
SELECT b.booking_id, b.start_date, u.first_name, p.name AS property_name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE b.start_date >= '2024-01-01' AND b.start_date <= '2024-12-31';

