--use MyDatabase
-- this is a comment
/*
This is a line
*/
--select * from customers
/*
Select 
	first_name,
	country,
	score
from customers
*/

-- Retrive customers with a score not equal to 0
--Select 
--	first_Name,
--	score
--from customers 
--where score != 0

-- Retrive customers from germany

--Select
--first_name,
--Score
--From customers
--where country = 'Germany'

-- Retrive all customers and sort the results by the highest score first
--Select *
--From customers
--order by score desc

-- Retrive all customers and sort the results by the lowest score first
--Select *
--From customers
--order by score asc

-- Retrive all customers and sort the results by the country and then by the highest score
--Select 
--	first_name, 
--	country,
--	score
--from customers
--order by country asc,
--score desc

-- find total score for each country

--Select
--	country,
--	first_name,
--	sum(score) as total_score
--from customers
--group by 
--	country,
--	first_name

-- Find total score and total number of customers for each country

--Select 
--	country,
--	sum(score) as Total_scores,
--	COUNT(country) as Number_of_customers
--from customers
--group by country

/* Find the average score for each country considering only customers with a score 
not equal to 0 and return only those countries with an average score greater than 430*/

--Select 
--	country,
--	AVG(score) as Average_of_scores
--from customers
--where score !=0
--group by country
--having AVG(score) >430

--Return unique list of all countries
--Select distinct country
--from customers

-- retrive only 3 customers

--Select top 3 *
--from customers

-- Retrive top 3 customers with the highest scores
--Select top 3 *
--from customers
--order by score desc

-- Retrive bottom 3 customers with the highest scores
--Select top 3 *
--from customers
--order by score asc

-- Get the two most recent orders

--Select top 2 *
--from orders
--order by order_date desc

-- Create a new table called persons with columns: id, person_name,birth_date, and phone.

--Create table persons(
--	id int not null,
--	person_name varchar(50) not null,
--	birth_date date,
--	phone varchar(15) not null,
--	constraint pk_persons primary key(id)
--)

-- Add new column called email to the persons table

--alter table persons
--add email varchar(50) not null

-- Remove the phone column from the persons table
--Alter table persons
--drop column phone

-- Delete the persons table from the database

--drop table persons

-- Insert new customers

--insert into customers(id, first_name, country, score) 
--values
--	(6,'Anna','USA',Null),
--	(7,'Sam',Null,100)

--insert into customers
--values
--	(8,'Prabal','India',650),
--	(9,'Sameer','UAE',100)

--Insert into customers (id, first_name)
--values
--(10,'Sahra')

--Select * from customers

--Copy data from customers table into persons table

--Create table persons 
--(id int not null,
--person_name varchar(50) not null,
--birth_date date null,
--phone_number varchar(15) not null
--Constraint PK_persons primary key (id)
--)

--Insert into persons (id, person_name,birth_date,phone_number)
--Select 
--id,
--first_name,
--null,
--'Unknown'
--From customers

--Select * from persons

--Change the score of customer id 6 to 0
--Select *
--from customers
--begin tran
--Update customers
--Set score=0
--where id=6
--Commit tran

-- change the score of customer with ID 10 to 0 and update the country to 'UK'

--Select * from customers

--Begin tran

--Update customers
--set 
--score = 0,
--country = 'UK'
--where id= 10

--Commit tran

-- Update all customers with a null score by setting their score to 0

--Select * from customers

--begin tran

--Update customers
--set
--score=0
--where score IS null

--Commit tran

-- Delete all customers with an ID greater than 5

--Begin tran

--Delete from customers
--where id> 5

--Select * from customers

--rollback

-- Delete all data from table persons

--Truncate table persons

-- Retrive all customers from germany

--Select *
--from customers
--where country='Germany'

-- Retrive all customers not from germany
--Select *
--from customers
--where country !='Germany'

-- Retrive all customers with score greater than 500

--Select *
--from customers
--where score> 500

-- Retrive all customers with score of 500 or more
--Select *
--from customers
--where score >= 500

-- Retrive all customers with score less than 500
--Select *
--from customers
--where score < 500

-- Retrive all customers with score less than or equal to 500
--Select *
--from customers
--where score <= 500

-- All customers who are from USA and have score above 500
--Select *
--from customers
--where country ='USA' and score > 500

-- All customers who are either from USA or have score above 500
--Select *
--from customers
--where country='USA' or score > 500

-- All customers with score not less than 500
--Select *
--from customers
--where not score < 500

--All customers whose score falls in the range between 100 and 500
--Select *
--from customers
--where score between 100 and 500

-- Get all customers either from germany or usa using in
--Select *
--from customers
--where country in ('Germany','USA')

-- Get all customers whose name starts with 'M'

--Select *
--from customers
--where first_name like 'm%'

-- Get all customers whose name ends with 'N'
--Select *
--from customers
--where first_name like '%n'

-- get all customers whose first name contains r
--Select *
--from customers
--where first_name like '%r%'

-- get all customers whose first name contains r in third position
--Select *
--from customers
--where first_name like '__r%'

-- Get all data from customers and orders
--select *
--from customers;
--select *
--from orders

-- get all customers along with their orders, but only for customers who have placed their orders

--select *
--from orders;

--Select *
--from customers;

--select
--	c.id,
--	c.first_name,
--	o.order_id,
--	o.sales
--from 
--customers as c inner join orders as o
--on c.id = o.customer_id

-- get all customers with all their orders along with those without orders

--select *
--from customers as c
--left join orders as o
--on c.id = o.customer_id

-- get all customers along with their orders, including orders without matching customers

--select *
--from customers as c
--right join orders as o
--on c.id = o.customer_id

-- get all customers along with their orders, including orders without matching customers (using left join)

--select *
--from orders as o
--left join customers as c
--on o.customer_id = c.id

-- get all customers and all orders even if there is no match

--select *
--from customers as c
--full join orders as o
--on c.id=o.customer_id

-- get all customers who have not placed any orders

--select *
--from customers as c
--left join orders as o
--on c.id = o.customer_id
--where o.customer_id is null

-- get all orders without matching customers

--select *
--from customers as c
--right join orders as o
--on c.id = o.customer_id
--where c.id is null

-- get same using left join


--select *
--from orders as o
--left join customers as c
--on c.id = o.customer_id
--where c.id is null

-- Find orders without customers and customers without orders

--select *
--from customers as c
--full join orders as o
--on c.id = o.customer_id
--where c.id is null 
--or o.customer_id is null

-- get all customers along with their orders, but only for customers who have placed an order (but without inner join)
--select *
--from customers as c
--left join orders as o
--on c.id = o.customer_id
--where o.customer_id is not null

-- generate all possible combinations of customers and orders

--select *
--from customers
--cross join orders

/*
using the salesDB, retrive the list of all orders, along with the customer, product and employee details.
for each order display- 
order ID
customer name
product name
sales amount
product price
salesperson's name
*/


