--eCommerce Simulation

1. CREATE TABLE users (
users_id SERIAL PRIMARY KEY,
name VARCHAR(40),
email VARCHAR(60)
);

CREATE TABLE products (
products_id SERIAL PRIMARY KEY,
name VARCHAR(40),
price FLOAT
);

CREATE TABLE orders (
orders_id SERIAL PRIMARY KEY,
product_id INT REFERENCES products(products_id)
);

2. INSERT INTO users(name, email)
VALUES 
('Josh', 'pingpong@gmail.com'),
('Collin', 'niceshoes@gmail.com'),
('Brittani', 'B_luxruy@gmail.com');

INSERT INTO products(name, price)
VALUES 
('Chicken', 7.50),
('Steak', 8.88 ),
('Shrimp', 9.99 );

INSERT INTO orders(product_id)
VALUES 
(1),
(2),
(3);

3. SELECT *
FROM products AS p
JOIN orders AS o
ON p.products_id= o.product_id
WHERE o.orders_id = 1;

SELECT * FROM orders;

SELECT SUM(p.price)
FROM orders AS o
JOIN products AS p
ON o.product_id = p.products_id;

4. ALTER TABLE orders
ADD COLUMN user_id INT
REFERENCES users(users_id);

5. UPDATE orders 
SET user_id =1
WHERE orders.orders_id = 1;

UPDATE orders 
SET user_id =2
WHERE orders.orders_id = 2;

UPDATE orders 
SET user_id =3
WHERE orders.orders_id = 3;

6. SELECT *
FROM orders;

SELECT u.name, COUNT(o.orders_id)
FROM orders AS o
JOIN users AS u
ON u.users_id = o.user_id
GROUP BY u.name