Database : esd

Tables : department , salary , emp 

create table department (
	department_id INT,
	department_name VARCHAR(50)
);
insert into department (department_id, department_name) values (1, 'Product Management');
insert into department (department_id, department_name) values (2, 'Engineering');
insert into department (department_id, department_name) values (3, 'Research and Development');
insert into department (department_id, department_name) values (4, 'Research and Development');
insert into department (department_id, department_name) values (5, 'Support');
insert into department (department_id, department_name) values (6, 'Accounting');
insert into department (department_id, department_name) values (7, 'Human Resources');
insert into department (department_id, department_name) values (8, 'Engineering');
insert into department (department_id, department_name) values (9, 'Accounting');
insert into department (department_id, department_name) values (10, 'Research and Development');


create table salary (
	emp_no INT,
	emp_name VARCHAR(50),
	salary VARCHAR(50)
);
insert into salary (emp_no, emp_name, salary) values (1, 'Joye', 'Real');
insert into salary (emp_no, emp_name, salary) values (2, 'Lenette', 'Koruna');
insert into salary (emp_no, emp_name, salary) values (3, 'Maxy', 'Rupiah');
insert into salary (emp_no, emp_name, salary) values (4, 'Andrea', 'Dirham');
insert into salary (emp_no, emp_name, salary) values (5, 'Myrtie', 'Zloty');
insert into salary (emp_no, emp_name, salary) values (6, 'Noelyn', 'Yuan Renminbi');
insert into salary (emp_no, emp_name, salary) values (7, 'Marinna', 'Rupiah');
insert into salary (emp_no, emp_name, salary) values (8, 'Margarete', 'Euro');
insert into salary (emp_no, emp_name, salary) values (9, 'Susan', 'Yuan Renminbi');
insert into salary (emp_no, emp_name, salary) values (10, 'Fletcher', 'Yuan Renminbi');

create table emp (
	emp_no INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(50),
	department_name VARCHAR(50),
	hire_date DATE,
	salary VARCHAR(50)
);
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (1, 'Damiano', 'Studholme', 'Male', 'Human Resources', '9/22/2021', 'Koruna');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (2, 'Justinian', 'Girardot', 'Male', 'Accounting', '10/22/2021', 'Tenge');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (3, 'Florrie', 'Northrop', 'Male', 'Engineering', '5/5/2021', 'Dram');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (4, 'Stuart', 'Bertenshaw', 'Male', 'Human Resources', '9/17/2021', 'Euro');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (5, 'Georg', 'Kemm', 'Male', 'Business Development', '3/31/2021', 'Yuan Renminbi');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (6, 'Kliment', 'Dinley', 'Male', 'Human Resources', '4/10/2021', 'Yuan Renminbi');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (7, 'Rhianon', 'Lory', 'Female', 'Engineering', '10/21/2021', 'Hryvnia');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (8, 'Jarrod', 'Gookey', 'Male', 'Accounting', '2/3/2022', 'Rupiah');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (9, 'Marchall', 'Bough', 'Male', 'Legal', '6/1/2021', 'Rupiah');
insert into emp (emp_no, first_name, last_name, gender, department_name, hire_date, salary) values (10, 'Annnora', 'Sellek', 'Female', 'Business Development', '5/7/2021', 'Zloty');


-- MySQL practice problems using the Employees Sample Database along with my solutions. See here for database installation details.--

/*Problem 1
Find the number of Male (M) and Female (F) employees in the database and order the counts in descending order.*/

SELECT gender, COUNT(*) AS total_count
FROM employees 
GROUP BY gender
ORDER BY total_count DESC;

gender	total_count Descending
Male          4
Female        3
Polygender    2
Genderqueer    1

/*Problem 2
Find the average salary by department_name, round to 2 decimal places and order by descending order.*/

SELECT department_name, ROUND(AVG(salary), 2) as salary
FROM department d JOIN salary s ON s.emp_no = d.department_id
GROUP BY department_name
ORDER BY salary DESC;

department_name	            salary Descending 	
Engineering                   0.00
Product Management            0.00
Human Resources               0.00
Accounting                    0.00
Support                       0.00
Research and Development      0.00



/*Problem 3
Find all the employees that have worked in at least 2 departments. Show their first name, last_name and the number of departments they work in. Display all results in ascending order.*/

SELECT CONCAT(e.first_name, ' ' , e.last_name) AS name, COUNT(*) AS number_of_departments
FROM employees e JOIN dept_emp d ON e.emp_no = d.emp_no
GROUP BY d.emp_no 
HAVING COUNT(*) > 1
ORDER BY name ASC;

/*Problem 4
Display the first name, last name, and salary of the highest payed employee.*/

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS employee_name, salary.salary 
FROM emp JOIN salary ON emp.emp_no = salary.emp_no
WHERE salary.salary = (SELECT MAX(salary.salary) FROM salary);

employee_name     salary
Amara Millions     Zloty


/*Problem 5
Display the first name, last name, and salary of the second highest payed employee.*/

SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS employee_name, salary.salary 
FROM emp JOIN salary ON emp.emp_no = salary.emp_no
WHERE salary.salary < (SELECT MAX(salary.salary) FROM salary)
ORDER BY salary.salary DESC
LIMIT 1;

employee_name          salary
Consalve Milstead    Yuan Renminbi

/*Problem 6
Display the month and total hires for the month with the most hires.*/

SELECT DATE_FORMAT(hire_date, '%M') AS month, COUNT(*) AS total_hires
FROM emp
GROUP BY month
ORDER BY total_hires DESC
LIMIT 1;


month   total_hires
NULL        10




/*Problem 8
Find all the employees that do not contain vowels in their first name and display the department they work in.*/

SELECT e.first_name, dep.department_name
FROM emp e JOIN department de ON e.emp_no = de.department_id
JOIN department dep ON de.department_id = dep.department_id
WHERE e.first_name NOT LIKE '%a%' 
  AND e.first_name NOT LIKE '%e%'  
  AND e.first_name NOT LIKE '%i%' 
  AND e.first_name NOT LIKE '%o%'
  AND e.first_name NOT LIKE '%u%'

  first_name    department_name
