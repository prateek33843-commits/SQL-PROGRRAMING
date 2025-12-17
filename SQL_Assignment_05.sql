create database SQL_1;

use SQL_1;

SELECT * FROM sql_1.employees;

#Que.1 Find the average salary of employees in each department. 
select department, avg(salary) as "Average Salary"
from employees
group by department;

#Que.2 Find the total number of employees hired after 2019.
select count(first_name) as Total_employee
from employees 
where hire_date > "2019";

#Que.3 List the departments and the total salary of all employees in each department, ordered by the total salary.
select department as Department, sum(salary) as Total_Salary
from employees
group by department
order by Total_salary;

#Que.4 Find the highest salary in the Finance department. 
select max(salary) as Highest_salary
from employees
where department = "Finance";

#Que.5 Get the top 3 highest-paid employees. 
select * from employees
order by salary desc limit 3;

#Que.6 Find the department with the minimum average salary.  
select department, avg(salary) as "minimum average salary"
from employees
group by department
order by avg(salary) limit 1;

#Que.7 Display the total number of employees in each department, ordered by the number of employees. 
select department, count(emp_id) as Total_Numbers_of_Employees
from employees
group by department
order by Total_Numbers_of_Employees;

#Que.8 Find the average salary of employees who were hired before 2020.
select avg(salary) as Average_salary
from employees
where hire_date < "2020";

#Que.9 List the names of employees in the IT department order by hired_date, with the most recently hired employees first time.
select * from employees
where department = "IT"
order by hire_date desc;

#Que.10 Find the sum of salaries for all employees hired after janaury-01-2019 order by salary.
select sum(salary) as Sum_of_Salaries
from employees
where hire_date > "2019-01-01"
order by salary;

#Que.11 Get the employee with the lowest salary in the HR department.
select * from employees
where department = "HR"
order by salary limit 1;

#Que.12 Find the total salary paid to employees in each department, but limit the result to top 2 highest paying department.
select department, sum(salary) as Total_Salary
from employees
group by department
order by Total_Salary desc limit 2;

#Que.13 List all employees hired after 2018, order by salary, and show only the first 4 employees.
select * from employees
where hire_date > "2018"
order by salary limit 4;

#Que.14 Find the highest salary in the IT department, but limit the results to the top 1 result.
#(i)..
select * from employees
where department = "IT"
order by salary desc limit 1;

#(ii)..
select max(salary) as Highest_Salary
from employees
where department = "IT";

#Que.15 Get the averege salary of employees in each department and list only departments with an average salary greater than $60,000.
select department, avg(salary) as Average_Salary
from employees
group by department
having Average_Salary > 60000;