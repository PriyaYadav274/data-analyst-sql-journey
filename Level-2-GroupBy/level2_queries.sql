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




