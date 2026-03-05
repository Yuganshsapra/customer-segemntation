CREATE DATABASE segmentation;
use segmentation;

CREATE TABLE customers (
customer_id VARCHAR(50),
customer_unique_id VARCHAR(50),
zip_code INT
);

LOAD DATA LOCAL INFILE 'C:\\Users\\HP\\OneDrive\\Desktop\\olist_customers_dataset.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from customers;

CREATE TABLE orders (
order_id VARCHAR(50),
customer_id VARCHAR (50),
order_status varchar(50),
order_purchase_timestamp DATETIME,
order_approved_at DATETIME,
order_delivered_carrier_date DATETIME,
order_delivered_customer_date DATETIME,
order_estimated_delivery_date DATETIME
);
LOAD DATA LOCAL INFILE 'C:\\Users\\HP\\OneDrive\\Desktop\\olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
TRUNCATE TABLE orders;
select * from orders;
DROP TABLE orders;

CREATE TABLE payments (
order_id varchar(50),
payment_sequential INT,
payment_type varchar(50),
payemnt_installments INT,
payment_value float
);

LOAD DATA LOCAL INFILE 'C:\\Users\\HP\\OneDrive\\Desktop\\olist_order_payments_dataset.csv'
INTO TABLE payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from payments;






