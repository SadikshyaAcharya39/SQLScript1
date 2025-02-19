CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE CUSTOMERS(
customer_id INT PRIMARY KEY auto_increment,
first_name VARCHAR(50),
last_name VARCHAR(100),
email VARCHAR(100),
phone_number VARCHAR(15),
registration_date DATE
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    );

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    total_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
    );
    
INSERT INTO Customers (first_name, last_name, email, phone_number, registration_date) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '2025-01-01'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '2025-01-10'),
('Alice', 'Johnson', 'alice.johnson@example.com', '1122334455', '2025-02-01'),
('Bob', 'Williams', 'bob.williams@example.com', '2233445566', '2025-02-05');

INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 1200.00, 50),
('Phone', 'Electronics', 800.00, 100),
('Tablet', 'Electronics', 600.00, 75),
('Headphones', 'Accessories', 150.00, 200);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-02-10', 2000.00),
(2, '2025-02-12', 1600.00),
(3, '2025-02-15', 600.00),
(4, '2025-02-18', 300.00);

INSERT INTO Order_Items (order_id, product_id, quantity, unit_price, total_price) VALUES
(1, 1, 1, 1200.00, 1200.00),
(1, 2, 1, 800.00, 800.00),
(2, 2, 2, 800.00, 1600.00),
(3, 3, 1, 600.00, 600.00),
(4, 4, 2, 150.00, 300.00);

SELECT MAX(price) AS MaxPrice 
FROM Products;





