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

/* Show top 5 highest-paid employees....................................................................*/
select employee_id , salary
from employees
order by salary desc
limit 5;

/*Show employees whose phone_number is NULL.*/

select employee_id, phone_number
from employees
where phone_number is null;

/*show employees whose name starts with 'N'.*/
 select  employee_name
 from employee
 where employee_name like 'N%';
 
 /*Show all customers who live in ‘Delhi’.*/
 select customer_name
 from customers
 where city like 'delhi%';
 
 /*Show customers older than 40*/
  select customer_id, age
 from customers
  where age < '40' ;

/*Count customers in each city.*/
select count(customer_id), city
from customers
group by city;

/*Show customers whose name ends with '5'*/
select customer_name
from customers
where customer_name like '%5';

/*Show all orders above ₹10,000*/
select order_id
from orders
where order_amount <10000;

/*Show latest 10 orders using ORDER BY order_date.*/
select order_id, order_date
from orders
order by order_date desc
limit 10;

/*Count how many orders each customer has placed.*/
select customer_id, count(order_id)
from orders
group by customer_id;

/*Show total order_amount (sum) for customer_id = 10.*/
select customer_id, sum(order_amount)
from orders
where customer_id like '%10'
group by customer_id;

/*Show orders placed between '2022-06-01' and '2022-12-31'.*/
select order_id , order_date
from orders
where order_date between '2022-06-01' and '2022-12-31';

/* Join customers and orders to show customer_name + order_amount.*/
select c.customer_name, sum(o.order_amount)
from customers c
join orders o on o.customer_id = o.customer_id 
group by c.customer_name ;






