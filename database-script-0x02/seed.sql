
USE airbnb_db;

INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u001', 'Alice', 'Wahome', 'alice@example.com', 'hashed_pw_123', '0700111222', 'guest'),
('u002', 'Bob', 'Njenga', 'bob@example.com', 'hashed_pw_456', '0700222333', 'host'),
('u003', 'Admin', 'User', 'admin@example.com', 'admin_hashed_pw', NULL, 'admin');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('p001', 'u002', 'Cozy Cottage', 'A quiet and cozy place to relax.', 'Kisumu, Kenya', 3500.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b001', 'p001', 'u001', '2025-05-20', '2025-05-23', 10500.00, 'confirmed');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay001', 'b001', 10500.00, 'credit_card');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r001', 'p001', 'u001', 5, 'Amazing place! Peaceful and clean. Highly recommended.');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('m001', 'u001', 'u002', 'Hi Bob, I really enjoyed staying at your cottage. Thanks!');


