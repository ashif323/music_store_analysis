
-- Drop tables if they exist (for clean re-run)
DROP TABLE IF EXISTS orders, customers, products, categories;

-- Create categories table
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    country VARCHAR(100)
);

-- Create orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample data
INSERT INTO categories (category_name) VALUES
('Electronics'), ('Books'), ('Clothing');

INSERT INTO products (product_name, price, category_id) VALUES
('Laptop', 800.00, 1),
('Smartphone', 600.00, 1),
('Novel', 20.00, 2),
('T-Shirt', 15.00, 3),
('Jeans', 40.00, 3);

INSERT INTO customers (customer_name, country) VALUES
('Alice', 'USA'),
('Bob', 'UK'),
('Charlie', 'India');

INSERT INTO orders (customer_id, product_id, quantity, total_amount, order_date) VALUES
(1, 1, 1, 800.00, '2025-04-01'),
(1, 3, 2, 40.00, '2025-04-03'),
(2, 2, 1, 600.00, '2025-04-05'),
(3, 4, 3, 45.00, '2025-04-10'),
(3, 5, 2, 80.00, '2025-04-12');
