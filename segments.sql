CREATE TABLE customer_segment AS
SELECT
    customer_unique_id,
    order_count,
    total_spent,
    CASE
        WHEN order_count >= avg_vals.avg_order_count
         AND total_spent >= avg_vals.avg_total_spent
            THEN 'Loyal Customers'

        WHEN order_count < avg_vals.avg_order_count
         AND total_spent >= avg_vals.avg_total_spent
            THEN 'High-Value At-Risk Customers'

        WHEN order_count >= avg_vals.avg_order_count
         AND total_spent < avg_vals.avg_total_spent
            THEN 'Active Low-Value Customers'

        ELSE 'Casual / Low-Engagement Customers'
    END AS customer_segment
FROM customer_dataset
CROSS JOIN (
    SELECT
        AVG(order_count) AS avg_order_count,
        AVG(total_spent) AS avg_total_spent
    FROM customer_dataset
) avg_vals;

SELECT * FROM customer_segment;
