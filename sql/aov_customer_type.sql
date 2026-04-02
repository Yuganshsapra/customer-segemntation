ALTER TABLE customer_segment
ADD COLUMN avg_order_value FLOAT,
ADD COLUMN customer_type VARCHAR(20);

UPDATE customer_segment
SET avg_order_value = 
    CASE 
        WHEN order_count > 0 THEN total_spent / order_count
        ELSE 0
    END;
    
UPDATE customer_segment
SET customer_type =
    CASE
        WHEN order_count > 1 THEN 'Repeat Customer'
        ELSE 'One-Time Customer'
    END;
    

    
SET SQL_SAFE_UPDATES = 0;