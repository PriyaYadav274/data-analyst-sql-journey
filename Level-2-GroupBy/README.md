# SQL Level 2 Practice 🚀

## 📌 Objective

Practice SQL aggregation and grouping techniques used in real-world data analysis.

## 🧠 Topics Covered

* GROUP BY
* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

## 📊 Sample Questions Solved

* Count employees in each department
* Find average salary by department
* Get highest salary in each department

## 💻 Sample Queries

```sql id="e5k2nz"
-- Count employees in each department
SELECT department, COUNT(*) 
FROM Employees 
GROUP BY department;

-- Average salary per department
SELECT department, AVG(salary) 
FROM Employees 
GROUP BY department;
```

## 🚀 Learning Outcome

* Learned how to summarize data
* Understood grouping logic used in business reports
