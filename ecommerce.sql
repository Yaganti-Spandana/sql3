CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  total_amount DECIMAL(10,2)
);
INSERT INTO orders VALUES
(1, 101, 50.00),
(2, 101, 120.00),
(3, 102, 30.00),
(4, 103, 300.00);
SELECT *
FROM orders
WHERE total_amount > 100;
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 100;
