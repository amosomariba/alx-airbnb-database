USE airbnb_db;

-- Writing an inner join to join Booking and User
SELECT * 
FROM `Booking`
INNER JOIN `User`
ON `Booking`.user_id = `User`.user_id;

SELECT *
FROM `Property`
LEFT JOIN `Review`
ON `Property`.property_id = `Review`.property_id;

-- Used Union to retrieve information of User and Booking
SELECT * 
FROM `Booking`
LEFT JOIN `User`
ON `Booking`.user_id = `User`.user_id
UNION
SELECT * 
FROM `Booking`
RIGHT JOIN `User`
ON `Booking`.user_id = `User`.user_id;