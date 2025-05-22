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

SELECT *
FROM `Booking`
LEFT JOIN `User`
ON `Booking`.user_id = `User`.user_id

FULL OUTER JOIN

SELECT *
FROM `Booking`
RIGHT JOIN `User`
ON `Booking`.user_id = `User`.user_id;



SELECT *
FROM 
    `User` U
FULL OUTER JOIN
    `Booking` b ON u.user_id = b.user_id
ORDER BY
    u.last_name, u.first_name, b.start_date;