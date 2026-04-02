ALTER TABLE customer_segment
ADD payment_type TEXT;

CREATE TABLE customer_payment_type AS
SELECT
    c.customer_unique_id,
    MAX(p.payment_type) AS payment_type
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_unique_id;

UPDATE customer_segment cs
JOIN customer_payment_type cp
    ON cs.customer_unique_id = cp.customer_unique_id
SET cs.payment_type = cp.payment_type;