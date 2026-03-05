DROP TABLE IF EXISTS customer_frequency;

CREATE TABLE customer_frequency AS
SELECT
    c.customer_unique_id,
    COUNT(DISTINCT o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id;

DROP TABLE IF EXISTS customer_spending;

CREATE TABLE customer_spending AS
SELECT
    c.customer_unique_id,
    SUM(p.payment_value) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_unique_id;

DROP TABLE IF EXISTS customer_dataset;

CREATE TABLE customer_dataset AS
SELECT
    c.customer_unique_id,
    COALESCE(f.order_count, 0) AS order_count,
    COALESCE(s.total_spent, 0) AS total_spent
FROM customers c
LEFT JOIN customer_frequency f
    ON c.customer_unique_id = f.customer_unique_id
LEFT JOIN customer_spending s
    ON c.customer_unique_id = s.customer_unique_id;
    
SELECT 
    MIN(order_count) AS min_orders,
    MAX(order_count) AS max_orders
FROM customer_dataset;

-- only for testing purpose
select order_count
from customer_dataset
where order_count > 3;

SELECT AVG(order_count) FROM customer_dataset;
SELECT AVG(total_spent) FROM customer_dataset;


