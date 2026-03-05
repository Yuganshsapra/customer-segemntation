CREATE TABLE customer_frequency AS
SELECT
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id;

SELECT * FROM customer_frequency;

CREATE TABLE customer_spending AS
SELECT
    o.customer_id,
    sum(p.payment_value) AS total_spent
FROM orders o
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY o.customer_id;

select * from customer_spending;

CREATE TABLE customer_dataset AS
SELECT
    c.customer_id,
    COALESCE(f.order_count, 0) AS order_count,
    COALESCE(s.total_spent, 0) AS total_spent
FROM customers c
LEFT JOIN customer_frequency f
    ON c.customer_id = f.customer_id
LEFT JOIN customer_spending s
    ON c.customer_id = s.customer_id;
    
SELECT * FROM customer_dataset;



