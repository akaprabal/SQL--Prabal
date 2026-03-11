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

