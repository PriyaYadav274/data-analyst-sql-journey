# SQL Level 2 Practice 🚀

## 📌 Objective

Practice core SQL concepts that are commonly asked in interviews and used in real-world data analysis.

## 🧠 Topics Covered

* GROUP BY
* HAVING
* SUM()
* COUNT()
* AVG()
* MIN()
* MAX()
* INNER JOIN
* LEFT JOIN

## 🗂️ Tables Used

* Customers
* Orders
* Products
* Order_Items

## 📊 Sample Questions Solved

* Find total sales per customer
* Find average order amount per customer
* Find total sales per city
* Find highest and lowest order amount
* Find customers with more than 2 orders
* Find products sold more than 2 times
* Get all orders with customer names
* Find customers who never placed an order
* Find products that were never sold

## 💻 Sample Queries

```sql id="yldz6a"
-- Total sales per customer
SELECT customer_id, SUM(amount) AS total_sales
FROM Orders
GROUP BY customer_id;

-- Customers with more than 2 orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 2;

-- Get customer names with order amounts
SELECT c.name, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- Find customers who never placed an order
SELECT c.customer_id, c.name
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

## 🚀 Learning Outcome

* Learned how to summarize data using GROUP BY
* Understood how to filter grouped data using HAVING
* Practiced aggregate functions like SUM, COUNT, and AVG
* Learned how to combine tables using INNER JOIN
* Understood how LEFT JOIN helps find missing records
* Improved problem-solving skills for SQL interview questions
