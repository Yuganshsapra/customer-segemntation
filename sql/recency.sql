CREATE TABLE customer_recency AS
SELECT
    c.customer_unique_id,
    MAX(o.order_purchase_timestamp) AS last_purchase_date
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_unique_id;


CREATE TABLE customer_recency_value AS
SELECT
    cr.customer_unique_id,
    DATEDIFF(
        (SELECT MAX(order_purchase_timestamp) FROM orders),
        cr.last_purchase_date
    ) AS recency_days
FROM customer_recency cr;

SELECT * FROM customer_recency;
SELECT * FROM customer_recency_value;

SELECT AVG(recency_days) FROM (customer_recency_value);
-- avg_recency=288.1088 15% of avg=43.21 lower bound=244 upper bound=331

ALTER TABLE customer_segment
ADD customer_recency text;

CREATE INDEX idx_customer_unique_id 
ON customer_segment(customer_unique_id);

CREATE INDEX idx_customer_unique_id_rec 
ON customer_recency_value(customer_unique_id);

UPDATE customer_segment cs
JOIN customer_recency_value cr
ON cs.customer_unique_id = cr.customer_unique_id
SET cs.customer_recency = 'Recently Active'
WHERE cr.recency_days < 244;

UPDATE customer_segment
SET customer_recency = 'Moderately Active'
WHERE customer_unique_id IN (
    SELECT customer_unique_id
    FROM customer_recency_value
    WHERE recency_days BETWEEN 244 AND 331
);

UPDATE customer_segment
SET customer_recency = 'Inactive'
WHERE customer_unique_id IN (
    SELECT customer_unique_id
    FROM customer_recency_value
    WHERE recency_days > 331
);





