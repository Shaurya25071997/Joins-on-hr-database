use practice1

create table departments (DEPARTMENT_ID INT, DEPARTMENT_NAME varchar(100), MANAGER_ID INT, LOCATION_ID INT)

Insert into departments values(50, 'Shipping', 121,1500)
Insert into departments values(60, 'IT', 103,1400)
Insert into departments values(70, 'Public Relations', 204,2700)
Insert into departments values(80, 'Sales', 145,2500)
Insert into departments values(90, 'Executive', 100,1700)
Insert into departments values(100, 'Finance', 108,1700)
Insert into departments values(110, 'Accounting', 205,1700)
Insert into departments values(120, 'Treasury', 0,1700)
Insert into departments values(130, 'Corporate Tax', 0,1700)
Insert into departments values(140, 'Control And Credit', 0,1700)
Insert into departments values(150, 'Shareholder Services', 0,1700)
Insert into departments values(160, 'Benefits', 0,1700)
Insert into departments values(170, 'Manufacturing', 0,1700)
Insert into departments values(180, 'Construction', 0,1700)
Insert into departments values(190, 'Contracting', 0,1700)
Insert into departments values(200, 'Operations', 0,1700)
Insert into departments values(210, 'IT Support', 0,1700)
Insert into departments values(220, 'NOC', 0,1700)
Insert into departments values(230, 'IT Helpdesk', 0,1700)
Insert into departments values(240, 'Government Sales', 0,1700)
Insert into departments values(250, 'Retail Sales', 0,1700)
Insert into departments values(260, 'Recruiting ', 0,1700)
Insert into departments values(270, 'Payroll', 0,1700)

select * from departments


create table employees(employee_id INT, FIRST_NAME varchar(100), LAST_NAME varchar(100),  EMAIL varchar(100),  PHONE_NUMBER varchar(100), HIRE_DATE date, JOB_ID varchar(100),salary float, COMMISSION_PCT int , Manager_id int, department_id int)



-- Inserting sample data into employees table

INSERT INTO employees (employee_id,first_name, last_name, email, phone_number, hire_date, job_id, salary, COMMISSION_PCT, Manager_id, department_id)
VALUES
(101,'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-15', 'IT_PROG', 24000, 0.00, 0, 90),
(102,'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2022-11-20', 'HR_REP', 17000, 0.00,100,90),
(103,'Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '2023-03-10', 'SA_REP', 17000, 0.00,100,90),
(104,'Emily', 'Williams', 'emily.williams@example.com', '456-789-0123', '2023-02-05', 'FIN_ANALYST',17000, 0.00,102,90),
(105,'David', 'Brown', 'david.brown@example.com', '567-890-1234', '2023-04-01', 'IT_PROG',4000, 0.00,103,90);





-- Creating locations table
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    street_address VARCHAR(100),
    postal_code VARCHAR(20),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country_id VARCHAR(2)
);

-- Inserting sample data into locations table
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES
(1000,'123 Main St', '12345', 'Anytown', 'CA', 'US'),
(1100,'456 Oak Ave', '67890', 'Somewhere', 'NY', 'US'),
(1200, '789 Elm Rd', '54321', 'Nowhere', 'TX', 'US');

-- Creating job_history table
CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(20),
    department_id INT,
    
);

-- Inserting sample data into job_history table
INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id)
VALUES
(1, '2022-01-01', '2023-03-31', 'IT_PROG', 1),
(2, '2022-02-15', '2023-04-30', 'HR_REP', 2),
(3, '2022-03-01', '2023-05-15', 'SA_REP', 3),
(4, '2022-04-01', '2023-06-30', 'FIN_ANALYST', 4),
(1, '2023-04-01', NULL, 'IT_MANAGER', 1);


-- Creating jobs table
CREATE TABLE jobs (
    job_id VARCHAR(20) PRIMARY KEY,
    job_title VARCHAR(100),
    min_salary DECIMAL(10, 2),
    max_salary DECIMAL(10, 2)
);

-- Inserting sample data into jobs table
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES
('AD_PRES', 'President', 20000.00, 40000.00),
('AD_VP', 'Administration Vice President', 15000.00, 30000.00),
('IT_PROG', 'Programmer', 60000.00, 120000.00),
('HR_REP', 'Human Resources Representative', 50000.00, 100000.00),
('SA_REP', 'Sales Representative', 55000.00, 110000.00),
('FIN_ANALYST', 'Financial Analyst', 65000.00, 130000.00),
('IT_MANAGER', 'IT Manager', 80000.00, 150000.00);


CREATE TABLE countries (
    country_id VARCHAR(2) PRIMARY KEY,
    country_name VARCHAR(100),
	Region_id INT
);

-- Inserting sample data into countries table
INSERT INTO countries (country_id, country_name,Region_id)
VALUES
('US', 'United States of America',2),
('CA', 'Canada',3),
('GB', 'United Kingdom',1),
('FR', 'France',2),
('DE', 'Germany',2),
('JP', 'Japan',1),
('AU', 'Australia',1);

-- Creating job_grades table
CREATE TABLE job_grades (
    grade_level Varchar(20),
    lowest_salary DECIMAL(10, 2),
    highest_salary DECIMAL(10, 2)
);

-- Inserting sample data into job_grades table
INSERT INTO job_grades (grade_level, lowest_salary, highest_salary)
VALUES
('A', 50000.00, 70000.00),
('B', 70001.00, 90000.00),
('C', 90001.00, 110000.00),
('D', 110001.00, 130000.00),
('E', 130001.00, 150000.00);


-----------------------Joins practice-----------------------


1. From the following tables, write a  SQL query to find the first name, last name, department number, and department name for each employee



select e.first_name, e.last_name, e.department_id, d.department_name from employees e join departments d on e.department_id = d.department_id


--------2. From the following tables, write a  SQL query to find the first name, last name, department, city, and state province for each employee.--------------


select e.first_name, e.last_name, d.department_name, l.city, l.state_province from employees e join departments d on e.department_id = d.department_id join locations l on d.location_id = l.location_id;

---3.------------ From the following table, write a SQL query to find the first name, last name, salary, and job grade for all employees.-------

select e.first_name, e.last_name, e.salary, j.grade_level from employees e join job_grades j on e.salary between j.lowest_salary and j.highest_salary

------------4--------- From the following tables, write a  SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name.

select e.first_name, e.last_name , e.department_id, d.department_name from employees e join departments d on e.department_id = e.department_id and e.department_id IN(80, 40) order by e.last_name;

---5.-From the following tables, write a  SQL query to find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province----------


select e.first_name, e.last_name, d.department_name, l.city, l.state_province from employees e join departments d on e.department_id = d.department_id join locations l on d.location_id = l.location_id where e.first_name like '%z%';

---6. From the following tables, write a  SQL query to find all departments, including those without employees. Return first name, last name, department ID, department name.-----------

select e.first_name, e.last_name, d.department_id, d.department_name from employees e right outer join departments d on e.department_id = d.department_id;


---7.  From the following table, write a  SQL query to find the employees who earn less than the employee of ID 182. Return first name, last name and salary.


select e.first_name, e.last_name, e.salary from employees e join employees s on e.salary < s.salary and s.employee_id = 182;

--8. From the following table, write a  SQL query to find the employees and their managers. Return the first name of the employee and manager.-----

select e.first_name as 'employee name', m.first_name as 'Manager' from employees e join employees m on e.manager_id = m.employee_id;

--9---From the following tables, write a SQL query to display the department name, city, and state province for each department.


select d.department_name, l.city, l.state_province from departments d join locations l on d.location_id = l.location_id;


--10. From the following tables, write a  SQL query to find out which employees have or do not have a department. Return first name, last name, department ID, department name.----


select e.first_name, e.last_name, e.department_id, d.department_name from employees e left outer join departments d on e.department_id = d.department_id;

--11. From the following table, write a  SQL query to find the employees and their managers. Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager.


select e.first_name as 'Employee name', m.first_name as 'Manager' from employees e left outer join employees m on e.manager_id = m.manager_id;

---12. From the following tables, write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name and department ID.


select e.first_name, e.last_name, e.department_id from employees e join employees s on e.department_id = s.department_id and s.last_name = 'Taylor';


--13.   From the following tables, write a SQL query to find all employees who joined on or after 1st January 1993 and on or before 31 August 1997. Return job title, department name, employee name, and joining date of the job.

select job_title, department_name, first_name + last_name as employee_name, start_date from job_history join jobs on jobs.job_id = job_history.job_id join departments on job_history.department_id = departments.department_id join employees on job_history.employee_id = employees.EMPLOYEE_ID where start_date >= '1993-01-01' and start_date <= '1997-08-31'


---14:-  From the following tables, write a  SQL query to calculate the difference between the maximum salary of the job and the employee's salary. Return job title, employee name, and salary difference.---

select job_title, first_name + last_name as employee_name, max_salary - salary as salary_difference from employees join jobs on employees.JOB_ID = jobs.job_id;

---15---From the following table, write a  SQL query to calculate the average salary, the number of employees receiving commissions in that department. Return department name, average salary and number of employees.

select department_name, AVG(salary) as salary, COUNT(commission_pct)as comission from departments join employees on departments.department_id = employees.department_id GROUP BY department_name;

-----16-- From the following tables, write a SQL query to calculate the difference between the maximum salary and the salary of all the employees who work in the department of ID 80. Return job title, employee name and salary difference

select job_title, first_name + last_name as employee_name, max_salary - salary as salary_difference from employees join jobs on employees.job_id = jobs.job_id  where department_id = 80;

---17-- From the following table, write a  SQL query to find the name of the country, city, and departments, which are running there

select country_name, city, department_name from countries join locations on countries.country_id = locations.country_id join departments on departments.location_id = locations.location_id;

--18. From the following tables, write a  SQL query to find the department name and the full name (first and last name) of the manager.

Select department_name, first_name + last_name AS name_of_manager from departments d join employees e on d.manager_id = e.employee_id;

--19. ---From the following table, write a SQL query to calculate the average salary of employees for each job title.

select job_title, avg(salary) from employees join jobs on employees.job_id = jobs.job_id group by job_title;

--20--From the following table, write a  SQL query to find the employees who earn $12000 or more. Return employee ID, starting date, end date, job ID and department ID.

select a.* from job_history a join employees m on a.employee_id = m.employee_id where salary >= 12000;

---21-- From the following tables, write a  SQL query to find out which departments have at least two employees. Group the result set on country name and city. Return country name, city, and number..-----


select country_name, city, count(department_id) from countries join locations on countries.country_id = locations.country_id join departments on locations.location_id = departments.location_id where department_id IN(SELECT department_id from employees group by DEPARTMENT_ID having count(department_id) >=2) group by country_name, city;


--22--- From the following tables, write a  SQL query to find the department name, full name (first and last name) of the manager and their city.

select department_name, first_name + last_name as name_of_manager, city from departments d join employees e on d.manager_id = e.employee_id join locations on locations.location_id = d.location_id;

--23---From the following tables, write a SQL query to calculate the number of days worked by employees in a department of ID 80. Return employee ID, job title, number of days worked.---


select employee_id, job_title, datediff(day, end_date,start_date) as days from job_history join jobs on job_history.job_id = jobs.job_id where department_id = 80;

--24- From the following tables, write a  SQL query to find full name (first and last name), and salary of all employees working in any department in the city of London.---

select first_name+last_name as employee_name , salary from employees join departments on employees.department_id = departments.department_id join locations on locations.location_id = departments.location_id where city = 'London';



