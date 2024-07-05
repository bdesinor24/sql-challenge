--CREATE TABLE employees (
--  emp_no Integer,
--  emp_title_id VARCHAR(30),
--  birth_date date,
--  first_name VARCHAR(30) NOT NULL,
--  last_name VARCHAR(30) NOT NULL,
--  sex VARCHAR(1) NOT NULL,
--  hire_date date
-- );

--Select*From employees

--CREATE TABLE departments (
--  dept_no VARCHAR(30) NOT NULL,
--  dept_name VARCHAR(30) NOT NULL
-- );
--Select*From departments

--CREATE TABLE dept_emp (
--  emp_no integer,
--  dept_no VARCHAR(30) NOT NULL
--);

--CREATE TABLE dept_manager (
--  dept_no VARCHAR(30) NOT NULL,
--  emp_no Integer  
-- );

--CREATE TABLE salaries (
--  emp_no VARCHAR(30) NOT NULL,
--  salary VARCHAR(30) NOT NULL  
-- );

--CREATE TABLE titles (
--  title_id VARCHAR(30) NOT NULL,
--  title VARCHAR(30) NOT NULL  
-- );

-- Perform an INNER JOIN on the two tables
-- List the employee number, last name, first name, sex, and salary of each employee.
--SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
--FROM employees
--INNER JOIN salaries ON
--employees.emp_no=salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
--SELECT employees.first_name, employees.last_name, employees.hire_date
--FROM employees
--where hire_date >='1/1/1986' and hire_date <='12/31/1986'

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
--SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
--FROM dept_manager
--JOIN departments ON
--dept_manager.dept_no=departments.dept_no
--JOIN employees ON
--dept_manager.emp_no=employees.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
--FROM dept_emp
--JOIN departments ON
--dept_emp.dept_no=departments.dept_no
--JOIN employees ON
--dept_emp.emp_no=employees.emp_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
--SELECT employees.first_name, employees.last_name, employees.sex
--FROM employees
--where first_name ='Hercules' and last_name like 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name.
--SELECT dept_emp.emp_no, employees.last_name, employees.first_name
--FROM dept_emp
--JOIN employees ON
--dept_emp.emp_no=employees.emp_no
--where dept_no='d007'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
--FROM dept_emp
--JOIN departments ON
--dept_emp.dept_no=departments.dept_no
--JOIN employees ON
--dept_emp.emp_no=employees.emp_no
--where dept_emp.dept_no='d007' 
--or dept_emp.dept_no='d005' 

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT COUNT (employees.last_name), employees.last_name
FROM employees
GROUP BY employees.last_name
ORDER BY COUNT(employees.last_name) DESC;

