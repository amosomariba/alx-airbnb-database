-- User Table – Additional Indexes

-- Index on 'role' column to speed up WHERE role = 'guest', 'host', etc.
CREATE INDEX idx_user_role ON User(role);

-- Index on 'created_at' to improve ORDER BY or date filters
CREATE INDEX idx_user_created_at ON User(created_at);


-- Property Table – Additional Indexes

-- Index on 'host_id' to improve JOIN with User or filtering by host
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Index on 'location' to speed up WHERE location LIKE '%New York%'
CREATE INDEX idx_property_location ON Property(location);

-- Index on 'pricepernight' for filtering and sorting
CREATE INDEX idx_property_price ON Property(pricepernight);

-- Index on 'created_at' for sorting new listings
CREATE INDEX idx_property_created_at ON Property(created_at);


-- Booking Table – Additional Indexes
-- Index on 'user_id' for JOIN and filtering bookings by user
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on 'status' to speed up filters like WHERE status = 'confirmed'
CREATE INDEX idx_booking_status ON Booking(status);

-- Index on 'start_date' for filtering or sorting bookings
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on 'created_at' for recent bookings
CREATE INDEX idx_booking_created_at ON Booking(created_at);


-- Step 1: Run the Query Without Index
SELECT * 
FROM Booking 
JOIN User ON Booking.user_id = User.user_id 
WHERE Booking.status = 'confirmed';

-- Use EXPLAIN before the query:
EXPLAIN SELECT * 
FROM Booking 
JOIN User ON Booking.user_id = User.user_id 
WHERE Booking.status = 'confirmed';

-- Step 2: Add Indexes
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Step 3: Run the Same EXPLAIN Again
EXPLAIN SELECT * 
FROM Booking 
JOIN User ON Booking.user_id = User.user_id 
WHERE Booking.status = 'confirmed';


-- Optional: Use SHOW STATUS for Execution Time (Basic Benchmark)
-- Reset timer
SHOW PROFILE;

-- Enable profiling (only in current session)
SET profiling = 1;

-- Run your query
SELECT * 
FROM Booking 
JOIN User ON Booking.user_id = User.user_id 
WHERE Booking.status = 'confirmed';

-- View profiling results
SHOW PROFILES;
