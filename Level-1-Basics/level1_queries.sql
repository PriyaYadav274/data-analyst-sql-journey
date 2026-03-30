USE COMPANY;

-- 1. SELECT (Basic Fetch)
-- Q1-) Show all columns from the table
SELECT 
    *
FROM
    EMPLOYEES;

-- Q2-) Show only name and salary
SELECT 
    NAME, SALARY
FROM
    EMPLOYEES;

-- Q3-) Show all employees names
SELECT 
    NAME
FROM
    EMPLOYEES;

-- Q4-) Show department column only
SELECT 
    DEPARTMENT
FROM
    EMPLOYEES;

-- 2. WHERE (Filtering Data)
-- Q5-) Find employees with salary > 40000
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    SALARY > 40000;

-- Q6-) Find employees from Delhi
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    CITY = 'DELHI';

-- Q7-) Find employees in IT department
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    DEPARTMENT = 'IT';

-- Q8-) Find employees with age < 26
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    AGE < 26;

-- Q9-) Find employees whose salary = 30000
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    SALARY = 30000;

-- Q10-) Find employees from Mumbai AND salary > 40000
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    CITY = 'MUMBAI' AND SALARY > 40000;

-- 3. ORDER BY (Sorting)
-- Q11-) Show all employees sorted by salary (ascending)
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY SALARY;

-- Q12-) Show all employees sorted by salary (descending)
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY SALARY DESC;

-- Q13-) Sort employees by age
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY AGE;

-- Q14-) Sort employees by name (A → Z)
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY NAME

-- Q15-) Sort employees by city
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY CITY

--  4. LIMIT (Top Results)
-- Q16-) Show top 3 highest paid employees
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY SALARY DESC
LIMIT 3

-- Q17-) Show first 2 records
SELECT 
    *
FROM
    EMPLOYEES
LIMIT 2

-- Q18-) Show 1 lowest salary employee
SELECT 
    *
FROM
    EMPLOYEES
ORDER BY SALARY
LIMIT 1

--  5. DISTINCT (Unique Values)
-- Q19-) Show unique departments
SELECT DISTINCT
    DEPARTMENT
FROM
    EMPLOYEES

-- Q20-) Show unique cities
SELECT DISTINCT
    CITY
FROM
    EMPLOYEES

-- Q21-) Count unique departments
SELECT 
    COUNT(DISTINCT DEPARTMENT)
FROM
    EMPLOYEES

--  BONUS (Mix Questions)
-- Q22-) Get top 2 highest salary employees from IT department
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    DEPARTMENT = 'IT'
ORDER BY SALARY DESC
LIMIT 2

-- Q23-) Get employees from Delhi sorted by salary
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    CITY = 'DELHI'
ORDER BY SALARY

-- Q24) Get unique cities sorted alphabetically
SELECT DISTINCT
    CITY
FROM
    EMPLOYEES
ORDER BY CITY

-- Q25-) Get employees with salary > 30000 sorted descending
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    SALARY > 30000
ORDER BY SALARY DESC
