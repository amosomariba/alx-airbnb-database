USE airbnb_db;

-- Writing an inner join to join Booking and User
SELECT * 
FROM `Booking`
INNER JOIN `User`
ON `Booking`.user_id = `User`.user_id;

SELECT *
FROM `Property`
LEFT JOIN `Review`
ON `Property`.property_id = `Review`.property_id
ORDER BY Property.name ASC, Review.rating DESC;


-- Used Union to retrieve information of User and Booking
-- LEFT JOIN: all bookings + matched users (or NULL)
SELECT 
    B.booking_id, B.property_id, B.user_id AS booking_user_id, 
    B.start_date, B.end_date, B.total_price, B.status, 
    U.user_id AS user_user_id, U.first_name, U.last_name, U.email
FROM Booking B
LEFT JOIN User U ON B.user_id = U.user_id

UNION

-- RIGHT JOIN: all users + matched bookings (or NULL)
SELECT 
    B.booking_id, B.property_id, B.user_id AS booking_user_id, 
    B.start_date, B.end_date, B.total_price, B.status, 
    U.user_id AS user_user_id, U.first_name, U.last_name, U.email
FROM Booking B
RIGHT JOIN User U ON B.user_id = U.user_id;
