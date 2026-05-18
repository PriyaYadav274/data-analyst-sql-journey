USE company;

-- PART 1: GROUP BY + AGGREGATES (15 Q)
-- 1. Find total sales (amount) per customer
SELECT 
    customer_id, SUM(amount)
FROM
    Orders
GROUP BY customer_id;

-- 2. Find total number of orders per customer
SELECT 
    customer_id, COUNT(*)
FROM
    Orders 
GROUP BY customer_id;

-- 3. Find average order amount per customer
SELECT 
    customer_id, AVG(amount)
FROM
    Orders
GROUP BY customer_id;

-- 4. Find total sales per city
SELECT 
    c.city, SUM(o.amount)
FROM
    Customers AS c
        INNER JOIN
    Orders AS o ON c.customer_id = o.customer_id
GROUP BY c.city;

-- 5. Find highest order amount per customer
SELECT 
    customer_id, MAX(amount)
FROM
    Orders
GROUP BY customer_id;

-- 6. Find lowest order amount per customer
SELECT 
    customer_id, MIN(amount)
FROM
    Orders
GROUP BY customer_id;

-- 7. Find total number of customers in each city
SELECT 
    city, COUNT(customer_id)
FROM
    Customers
GROUP BY city;

-- 8. Find average product price per category
SELECT 
    category, AVG(price)
FROM
    Products
GROUP BY category;

-- 9. Find total products in each category
SELECT 
    category, COUNT(product_id)
FROM
    Products
GROUP BY category;

-- 10. Find max and min product price per category
SELECT 
    category, MAX(price), MIN(price)
FROM
    Products
GROUP BY category;

-- 11. Find total quantity sold per product
SELECT 
    product_id, SUM(quantity)
FROM
    Order_Items
GROUP BY product_id;

-- 12. Find total revenue per product (price × quantity)
SELECT 
    p.product_id, SUM(p.price * o.quantity) AS revenue
FROM
    Products AS p
        INNER JOIN
    Order_Items AS o ON p.product_id = o.product_id
GROUP BY product_id;

-- 13. Find total orders per date
SELECT 
    order_date, COUNT(order_id)
FROM
    Orders
GROUP BY order_date;

-- 14. Find average order value per date
SELECT 
    order_date, AVG(amount)
FROM
    Orders
GROUP BY order_date;

-- 15. Find total sales per month
SELECT 
    MONTH(order_date) AS Month, SUM(amount) AS Total_Sales
FROM
    Orders
GROUP BY MONTH(order_date);


--  PART 2: HAVING 
-- 16. Find customers who made more than 5 orders
SELECT 
    customer_id, COUNT(order_id)
FROM
    Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5; 

-- 17. Find cities with more than 3 customers
SELECT 
    city, COUNT(customer_id)
FROM
    Customers
GROUP BY city
HAVING COUNT(customer_id) > 3;

-- 18. Find products sold more than 100 times
SELECT 
    product_id, SUM(quantity)
FROM
    Order_Items
GROUP BY product_id
HAVING SUM(quantity) > 100;

-- 19. Find categories with average price > 500
SELECT 
    category, AVG(price)
FROM
    Products
GROUP BY category
HAVING AVG(price) > 500;

-- 20. Find customers whose total purchase > 10,000
SELECT 
    customer_id, SUM(amount)
FROM
    Orders
GROUP BY customer_id
HAVING SUM(amount) > 10000;

-- 21. Find dates where total sales > 5,000
SELECT 
    order_date, SUM(amount)
FROM
    Orders
GROUP BY order_date
HAVING SUM(amount) > 5000;

-- 22. Find products with total revenue > 20,000
SELECT 
    p.product_id, SUM(p.price * o.quantity) AS revenue
FROM
    products p
        INNER JOIN
    order_items o ON p.product_id = o.product_id
GROUP BY p.product_id
HAVING SUM(p.price * o.quantity) > 20000;

-- 23. Find customers with average order amount > 1000
SELECT 
    customer_id, AVG(amount)
FROM
    orders
GROUP BY customer_id
HAVING AVG(amount) > 1000;

-- 24. Find categories having more than 10 products
SELECT 
    p.category, COUNT(o.quantity) AS products
FROM
    products p
        INNER JOIN
    order_items o ON p.product_id = o.product_id
GROUP BY category
HAVING COUNT(o.quantity) > 10;

-- 25. Find cities where total sales is less than 2000
SELECT 
    c.city, SUM(o.amount) AS Total_Sales
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.city
HAVING SUM(o.amount) < 2000;


--  PART 3: INNER JOIN ⭐ (10 Q)
-- 26. Get all orders with customer names
SELECT 
    o.order_id, o.order_date, o.amount, c.name
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id;

-- 27. Get customer name and their order amounts
SELECT 
    c.name, o.amount AS Order_Amount
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id;

-- 28. Get product name with quantity sold
SELECT 
    p.product_name AS Products, SUM(O.quantity) AS Quantity_Sold
FROM
    products p
        INNER JOIN
    order_items o ON p.product_id = o.product_id
GROUP BY p.product_name;

-- 29. Get order details with product names
SELECT 
    o.order_id,
    o.order_date,
    o.amount,
    p.product_name,
    oi.quantity
FROM
    orders o
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    products p ON p.product_id = oi.product_id;

-- 30. Get total sales per customer (using join)
SELECT 
    c.customer_id AS Customer, SUM(o.amount) AS Total_Sales
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 31. Get total quantity sold per category
SELECT 
    p.category AS Category, SUM(o.quantity) AS Total_Quantity
FROM
    products p
        INNER JOIN
    order_items o ON p.product_id = o.product_id
GROUP BY p.category;

-- 32. Get all orders with product price
SELECT 
    o.order_id, o.order_date, o.amount, p.price, oi.quantity
FROM
    orders o
        JOIN
    order_items oi ON o.order_id = oi.order_id
        JOIN
    products p ON p.product_id = oi.product_id;

-- 33. Get customer name, order id, and order amount
SELECT 
    c.name, o.order_id, o.amount
FROM
    customers c
        INNER JOIN
    orders o ON c.customer_id = o.customer_id;










