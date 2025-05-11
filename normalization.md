
### 🧾 Step-by-Step Normalization

#### 🔹 Step 1: **First Normal Form (1NF)**

* All tables have atomic values.
* No multivalued attributes or repeated columns.

✅ Example:

```sql
User(phone_number VARCHAR) -- One number per user
```

All fields like `email`, `location`, `pricepernight` in the Property table are atomic.

➡ **Status**: All tables meet 1NF ✅

---

#### 🔹 Step 2: **Second Normal Form (2NF)**

Applies only to tables with **composite primary keys**. All our tables use **UUIDs as primary keys** (i.e., single column), so this is inherently satisfied.

➡ **Status**: All tables meet 2NF ✅

---

#### 🔹 Step 3: **Third Normal Form (3NF)**

Here we check for **transitive dependencies** – no non-key field should depend on another non-key field.

---

### 🔍 Review of Tables

#### ✅ `User`

| Attribute      | Depends on |
| -------------- | ---------- |
| email, name... | `user_id`  |

No derived or redundant data (e.g., full name).
➡ Already in 3NF ✅

---

#### ✅ `Property`

| Attribute      | Depends on         |
| -------------- | ------------------ |
| name, price... | `property_id`      |
| host\_id       | foreign key (User) |

No redundant info like host name (avoids transitive dependency).
➡ Already in 3NF ✅

---

#### ✅ `Booking`

| Attribute                 | Depends on   |
| ------------------------- | ------------ |
| start\_date, total\_price | `booking_id` |
| property\_id, user\_id    | Foreign Keys |

No duplicated or derived data like property name or user name.
➡ Already in 3NF ✅

---

#### ✅ `Payment`

| Attribute   | Depends on   |
| ----------- | ------------ |
| amount      | `payment_id` |
| booking\_id | Foreign Key  |

No redundant booking info like user or property names.
➡ Already in 3NF ✅

---

#### ✅ `Review`

| Attribute       | Depends on  |
| --------------- | ----------- |
| rating, comment | `review_id` |
| user\_id        | Foreign Key |

No transitive dependencies.
➡ Already in 3NF ✅

---

#### ✅ `Message`

| Attribute     | Depends on   |
| ------------- | ------------ |
| message\_body | `message_id` |
| sender\_id    | Foreign Key  |

No sender name or email repeated.
➡ Already in 3NF ✅

---



