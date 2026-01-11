# Day 3 — WHERE vs HAVING 🗂️

This project explains the difference between **WHERE** and **HAVING** using **real-world examples** inspired by Instagram and E-commerce applications.

It is part of my **SQL learning series**, focused on writing queries used in real tech jobs.

---

## 🎯 Topic

**WHERE vs HAVING**

- `WHERE` → filters rows **before grouping**
- `HAVING` → filters groups **after aggregation**

This is one of the most common SQL interview questions.

---

## 🛠 Tech Used

- SQL (SQLite / MySQL compatible)
- No frontend
- No backend
- Pure SQL queries

---

## 📸 Real-World Example 1 — Instagram

### 📋 Table: `posts`

```sql
CREATE TABLE posts (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  likes INTEGER
);
Sample Data
sql
Copy code
INSERT INTO posts (id, user_id, likes) VALUES
(1, 1, 50),
(2, 1, 120),
(3, 2, 30),
(4, 2, 200),
(5, 3, 10);
❌ Common Beginner Mistake
sql
Copy code
SELECT user_id, COUNT(*)
FROM posts
WHERE COUNT(*) > 1
GROUP BY user_id;
❌ WHERE cannot be used with aggregate functions.

✅ Correct Use of WHERE (Row-Level Filtering)
sql
Copy code
SELECT *
FROM posts
WHERE likes > 50;
Used for:

Filtering individual posts

Feed-level conditions

Before grouping occurs

✅ Correct Use of HAVING (Group-Level Filtering)
sql
Copy code
SELECT user_id, COUNT(*) AS total_posts
FROM posts
GROUP BY user_id
HAVING COUNT(*) > 1;
Used for:

Analytics

Reports

Filtering aggregated results

🛒 Real-World Example 2 — E-commerce
📋 Table: orders
sql
Copy code
CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  total_amount DECIMAL(10,2)
);
Sample Data
sql
Copy code
INSERT INTO orders VALUES
(1, 101, 50.00),
(2, 101, 120.00),
(3, 102, 30.00),
(4, 103, 300.00);
✅ WHERE Example
sql
Copy code
SELECT *
FROM orders
WHERE total_amount > 100;
Filters individual orders before grouping.

✅ HAVING Example
sql
Copy code
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 100;
Filters customers after aggregation.

🧠 Key Takeaways
Use WHERE to filter rows

Use HAVING to filter grouped data

WHERE comes before GROUP BY

HAVING comes after GROUP BY

▶️ How to Run
Open an online SQL editor (SQLite Online / DB Fiddle)

Paste the table creation queries

Insert sample data

Run WHERE and HAVING queries

View results instantly

No setup required.

📸 Content Usage
This project is used for:

Instagram Reels

SQL learning series

Beginner-friendly SQL education

🎯 CTA: Save this

🚀 Series Progress
Day 1: What is SQL & why it matters

Day 2: SELECT vs SELECT *

✅ Day 3: WHERE vs HAVING

Day 4: ORDER BY

Day 5: LIMIT

Follow for the full SQL series 🚀

yaml
Copy code

---

Bio line idea:
> *Learning SQL with real-world projects • Follow for SQL series*

---

If you want next:
- **Day 4 README — ORDER BY**
- Carousel slide text
- Reel voiceover script
- One master repo for all days

Just say **Day 4** 🔥
