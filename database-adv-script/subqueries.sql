USE airbnb_db;
SELECT *
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);


SELECT *
FROM User U
WHERE (
    SELECT COUNT(*)
    FROM Booking B
    WHERE B.user_id = U.user_id
) > 3;

-- SELECT COUNT(*)
-- FROM Booking B
-- WHERE B.user_id = U.user_id

