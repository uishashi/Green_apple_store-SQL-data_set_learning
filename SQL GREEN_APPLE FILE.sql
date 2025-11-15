select * from customers;


select name, salary
from green_apple_db.employees;



SELECT employee_name, salary
FROM green_apple_db.employees;

/*Find employees with salary greater than 30,000.*/
 select employee_name, salary
 from employees
 where salary >30000;
 
/*Sort employees by joining date.*/
 select employee_name, joining_date
from employees
order by  joining_date asc;

/*Count total rows in orders table.*/
 select count(*)
 from orders;

/*Show employees who earn more than 50,000*/
select employee_id,salary
from employees
where salary > 50000;

/*List employees who joined after 2021-01-01.*/
select employee_id, joining_date
from employees
where  joining_date > 2021-01-01;

/*Show the highest salary in the company.*/
select employee_name, salary
from employees
order by salary desc
limit 1 ;

/*Show the lowest salary in the company.*/
select employee_name, salary
from employees
order by salary asc
limit 1 ;

/*Count how many employees each department has.*/
select count(*), department_name
from employees
group by department_name
order by count(*)desc ;






