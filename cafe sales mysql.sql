CREATE DATABASE cafe_sales_db;

USE cafe_sales_db;

CREATE TABLE cafe_sales (
    transaction_id int PRIMARY KEY,
    item VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    total_spent DECIMAL(10,2),
    payment_method VARCHAR(50),
    location VARCHAR(50),
    transaction_date DATE
);

DESC cafe_sales;

ALTER TABLE cafe_sales MODIFY COLUMN transaction_id VARCHAR(50);

INSERT INTO cafe_sales (transaction_id, item, quantity, price_per_unit, total_spent, payment_method, location, transaction_date) 
VALUES 
('TXN_001', 'Coffee', 2, 2.50, 5.00, 'Credit Card', 'In-store', '2024-03-01'),
('TXN_002', 'Cake', 1, 3.00, 3.00, 'Cash', 'Takeaway', '2024-03-02');

SELECT * FROM cafe_sales LIMIT 5;

SELECT COUNT(*) FROM cafe_sales;



