Great! Here's how to complete your objective of creating an **Entity-Relationship (ER) Diagram** based on your Airbnb database specification.

---

## ✅ Step-by-Step Guide to Creating an ER Diagram

### 🧱 1. Identify Entities and Their Attributes

#### **Entity: User**

* `user_id` (PK)
* `first_name`
* `last_name`
* `email`
* `password_hash`
* `phone_number`
* `role` (guest, host, admin)
* `created_at`

#### **Entity: Property**

* `property_id` (PK)
* `host_id` (FK → User)
* `name`
* `description`
* `location`
* `pricepernight`
* `created_at`
* `updated_at`

#### **Entity: Booking**

* `booking_id` (PK)
* `property_id` (FK → Property)
* `user_id` (FK → User)
* `start_date`
* `end_date`
* `total_price`
* `status` (pending, confirmed, canceled)
* `created_at`

#### **Entity: Payment**

* `payment_id` (PK)
* `booking_id` (FK → Booking)
* `amount`
* `payment_date`
* `payment_method` (credit\_card, paypal, stripe)

#### **Entity: Review**

* `review_id` (PK)
* `property_id` (FK → Property)
* `user_id` (FK → User)
* `rating` (1–5)
* `comment`
* `created_at`

#### **Entity: Message**

* `message_id` (PK)
* `sender_id` (FK → User)
* `recipient_id` (FK → User)
* `message_body`
* `sent_at`

---

### 🔗 2. Define Relationships

* **User ↔ Property**: One user (host) can have many properties.
* **User ↔ Booking**: One user can book many properties.
* **User ↔ Review**: One user can write many reviews.
* **User ↔ Message**: One user can send and receive many messages.
* **Property ↔ Booking**: One property can have many bookings.
* **Property ↔ Review**: One property can have many reviews.
* **Booking ↔ Payment**: One booking has one payment.

---

### 🧰 3. Create the ER Diagram in Draw\.io

#### 🎨 Diagram Structure

Use the following:

* **Rectangles**: Entities
* **Ovals or boxes inside**: Attributes
* **Diamonds or labeled lines**: Relationships
* Connect:

  * User (host) → Property (1\:N)
  * User → Booking (1\:N)
  * User → Review (1\:N)
  * User → Message (1\:N, as sender and recipient)
  * Property → Booking (1\:N)
  * Booking → Payment (1:1)
  * Property → Review (1\:N)

---

