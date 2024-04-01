


#create database 
create database bookster;

#use database 
use bookster;

#create tables
CREATE TABLE IF NOT EXISTS authors
(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    author_id INT,
    genre VARCHAR(50),
    price DECIMAL(10, 2),
    published_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(15)
);
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

# Insert data into authors table
INSERT INTO authors (author_name) VALUES ('J.K. Rowling'), ('Stephen King'), ('Harper Lee');

# Insert data into books table
INSERT INTO books (book_title, author_id, genre, price, published_date) VALUES 
('Harry Potter and the Philosopher''s Stone', 1, 'Fantasy', 19.99, '1997-06-26'),
('To Kill a Mockingbird', 3, 'Classic', 14.99, '1960-07-11'),
('The Shining', 2, 'Horror', 12.99, '1977-01-28');

# Insert data into customers table
INSERT INTO customers (customer_name, email, phone) VALUES 
('Alice Johnson', 'alice@example.com', '+1234567890'),
('Bob Smith', 'bob@example.com', '+1987654321');

# Insert data into orders table
INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
(1, NOW(), 34.98),
(2, NOW(), 14.99);

#  Insert data into order_items table
INSERT INTO order_items (order_id, book_id, quantity, subtotal) VALUES 
(1, 1, 2, 39.98),
(2, 3, 1, 12.99);

#  Retrieve all books
SELECT * FROM books;

#  Retrieve books with a price less than $15
SELECT * FROM books WHERE price < 15;

# Retrieve books along with their authors
SELECT b.book_title, a.author_name 
FROM books b 
INNER JOIN authors a ON b.author_id = a.author_id;

# Retrieve total order amount for each customer
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

# Retrieve the number of orders for each book
SELECT b.book_title, COUNT(oi.order_id) AS num_orders
FROM books b
LEFT JOIN order_items oi ON b.book_id = oi.book_id
GROUP BY b.book_id;



















