-- 1. Get the names of all employees who have a salary greater than $20.000.

SELECT first_name, last_name
FROM employees
WHERE salary > 20000;


--- 2. Get the names of all employees who are working in the "Sales" department.
SELECT e.first_name, e.last_name
FROM employees e
JOIN department d ON e.department_id = d.department_id
WHERE d.department_name = 'Sales';

-- 3. Get the names (first_name, last_name), salary, PortFolio of all the employees (PortFolio is calculated as 12% of salary).
SELECT 
    first_name, 
    last_name, 
    salary, 
    salary * 0.12 AS PortFolio
FROM employees;

-- 5. Get the names and job titles of all employees who are Finance manager.
SELECT e.first_name, e.last_name, j.job_title
FROM  employees e
JOIN  jobs j ON e.job_id = j.job_id
WHERE j.job_title = 'Finance Manager';


-- 6. Write a query to get the first 3 characters of first name from the employees table. You might need to use the substring method.
SELECT SUBSTR(first_name, 1, 3) AS first_3_chars
FROM employees;

-- 7. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;