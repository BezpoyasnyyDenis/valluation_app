-- schema.sql
-- Create database and products table

CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    brand TEXT NOT NULL,
    year INT,
    condition TEXT,
    description TEXT,
    price NUMERIC(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data for products
INSERT INTO products (name, category, brand, year, condition, description, price) VALUES
('Samsung Galaxy S10', 'Electronics', 'Samsung', 2019, 'used', 'Smartphone 2019', 400.00),
('Samsung Galaxy S20', 'Electronics', 'Samsung', 2020, 'used', 'Smartphone 2020', 500.00),
('iPhone 11', 'Electronics', 'Apple', 2019, 'used', 'Smartphone 2019', 450.00),
('Sony TV X120', 'Electronics', 'Sony', 2018, 'new', 'Television 2018', 800.00),
('Nike Running Shoes', 'Sportswear', 'Nike', 2021, 'new', 'Running shoes', 100.00),
('Adidas Running Shoes', 'Sportswear', 'Adidas', 2020, 'used', 'Running shoes', 80.00);
