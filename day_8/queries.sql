CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE,
  join_date DATE
);

INSERT INTO customers (customer_id, name, city, email, join_date) VALUES
(101, 'Neha Sharma', 'Mumbai', 'neha@mail.com', '2022-01-15'),
(102, 'Rohan Mehta', 'Delhi', 'rohan.mehta@mail.com', '2021-11-20'),
(103, 'Aisha Khan', 'Bangalore', 'aisha.k@mail.com', '2023-03-08'),
(104, 'Vivek Verma', 'Mumbai', 'vivek.v@mail.com', '2022-05-12'),
(105, 'Priya Sinha', 'Chennai', 'priya.sinha@mail.com', '2023-07-01'),
(106, 'Aarav Patel', 'Delhi', 'aarav.p@mail.com', '2022-12-30'),
(107, 'Kavya Iyer', 'Bangalore', 'kavya.iyer@mail.com', '2021-08-18');

CREATE TABLE purchases (
  purchase_id INT PRIMARY KEY,
  customer_id INT NOT NULL,
  item VARCHAR(255) NOT NULL,
  catergory VARCHAR(255) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  purchase_date DATE 
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
);

INSERT INTO purchases (purchase_id, customer_id, item, category, amount, purchase_date) VALUES
('P001', 101, 'Bluetooth Speaker', 'Electronics', 2500.00, '2023-01-10'),
('P002', 102, 'Headphones', 'Electronics', 3200.00, '2023-02-18'),
('P003', 103, 'T-shirt', 'Clothing', 800.00, '2023-03-15'),
('P004', 104, 'Jeans', 'Clothing', 1200.00, '2023-01-20'),
('P005', 105, 'Blender', 'Appliances', 2100.00, '2023-04-10'),
('P006', 106, 'Refrigerator', 'Appliances', 15000.00, '2022-12-01'),
('P007', 107, 'Washing Machine', 'Appliances', 12000.00, '2023-02-05'),
('P008', 101, 'Shirt', 'Clothing', 900.00, '2023-02-12'),
('P009', 102, 'Microwave', 'Appliances', 9500.00, '2023-03-01'),
('P010', 103, 'Laptop', 'Electronics', 55000.00, '2023-04-22'),
('P011', 104, 'Shoes', 'Clothing', 2000.00, '2023-03-12'),
('P012', 105, 'Jacket', 'Clothing', 1800.00, '2023-05-19'),
('P013', 106, 'TV', 'Electronics', 32000.00, '2023-01-30'),
('P014', 107, 'Mixer', 'Appliances', 3000.00, '2023-03-05'),
('P015', 101, 'Mobile Phone', 'Electronics', 15000.00, '2023-06-21');


SELECT customer_id, count(amount) AS Total_amount FROM purchases GROUP BY customer_id;

SELECT count(*) AS no_of_purchases FROM purchases GROUP BY customer_id;

SELECT sum(amount) AS total_amount_spent FROM purhcases GROUP BY city;


