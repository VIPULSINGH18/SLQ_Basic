-- this code is to select all columns from customers table --
-- SELECT *  --
-- FROM customers -- 


-- this code is to select all columns from order table --
-- SELECT * --
-- FROM orders--


-- this code is used select columns according to our requirement --
-- SELECT --
-- first_name,country,score --
-- FROM customers --


-- This code is used to print only unique values --
-- SELECT DISTINCT -- 
-- country --
-- FROM customers --   
	
-- this code is used to retrieve all the columns from customer table in ascending order of score --
-- SELECT * --
-- FROM customers--
-- ORDER BY  score ASC -- 


-- Code to arrange the country column data in alphabetical order of country and desending order of score --
 -- SELECT * --
 -- FROM customers --
 -- ORDER BY country ASC  , score DESC --


-- printing the customer more than score 500
-- SELECT *--
-- FROM customers --
-- WHERE  score>500 --


-- printing the customer of country germany--

-- SELECT *
-- FROM customers
-- WHERE country = 'Germany'


-- if we need to give two condition --
-- SELECT *
-- FROM customers
-- WHERE country = 'Germany' AND score <= 500


-- using between keyword to print the value within the range given

-- SELECT *
-- FROM customers
-- WHERE score BETWEEN 100 AND 800


-- it is used to print the customer having id 1,2,5
-- SELECT *
-- FROM customers
-- WHERE customer_id  IN (1,2,5)


-- printing the name whose first name starts with M
-- SELECT *
-- FROM customers
-- WHERE first_name LIKE "M%"


-- to print the name whose last_name ends with r
-- SELECT *
-- FROM customers
-- WHERE last_name LIKE "%r"

-- to print the name whose first name contains e in their name
-- SELECT *
-- FROM customers
-- WHERE first_name LIKE "%e%"

-- to print the name whose last_name contains r in 3rd position
-- SELECT *
-- FROM customers
-- WHERE first_name LIKE  "__r%"

-- in this way we can join two tables and implement INNER JOIN where we display only matching data
-- SELECT
-- c.customer_id,
-- c.country,
-- o.order_id,
-- o.quantity

-- FROM customers AS c
-- INNER JOIN orders AS o
-- ON c.customer_id = o.customer_id

-- implementing LEFT JOIN where we display all the data of left table and matching data of right table
 -- SELECT 
 -- c.customer_id,
 -- c.first_name,
 -- c.country,
 -- o.order_id,
 -- o.order_date,
 -- o.quantity
 -- FROM customers AS c
 -- LEFT JOIN orders AS o
 -- ON c.customer_id = o.customer_id
 
 
 -- implementing RIGHT JOIN where we display all the data of right table and matching data of left table --
 -- SELECT 
 -- c.customer_id,
 -- c.first_name,
 -- c.country,
-- o.order_id,
-- o.customer_id,
--  o.quantity
 
-- FROM customers AS c
-- RIGHT JOIN orders AS o
-- ON c.customer_id=o.customer_id

-- we can't directly perform FULL JOIN concept in MYSQL , we will do UNION of INNER JOIN & LEFT JOIN to get FULL JOIN 

-- SELECT 
-- c.customer_id,
-- c.first_name,
-- c.country,
-- c.score,
-- e.emp_id,
-- e.first_name,
-- e.emp_country,
-- e.salary

-- FROM customers AS c
-- RIGHT JOIN employees AS e
-- ON c.first_name = e.first_name

--  UNION

-- SELECT 
-- c.customer_id,
-- c.first_name,
-- c.country,
-- c.score,
-- e.emp_id,
-- e.first_name,
-- e.emp_country,
-- e.salary

-- FROM customers AS c
-- LEFT JOIN employees AS e
-- ON c.first_name = e.first_name

-- UNION command is used to merge the row data of two table and it gives only unique values
-- SELECT
-- first_name,
-- last_name,
-- country
-- FROM customers 
-- UNION 
-- SELECT 
-- first_name,
-- last_name,
-- emp_country
-- FROM employees 

-- UNION ALL does the same thing that UNION do, but it display the duplicate datas also..

-- SELECT 
-- first_name,
-- last_name,
-- country
-- FROM customers 
-- UNION ALL 
-- SELECT 
-- first_name,
-- last_name,
-- emp_country
-- FROM employees 


-- this code is used to print the count of data frim table
-- SELECT COUNT(*) AS total_customers
-- FROM customers


-- this is used to find the sum of attributes of any particular column
-- SELECT SUM(quantity) AS total_orders
-- FROM orders


-- this code is used to find the average value of datas
-- SELECT AVG(score) AS average_score
-- FROM customers

-- finding the maximum score of customers
-- SELECT MAX(score)  AS max_score
-- FROM customers


-- finding the minimum salary value
-- SELECT MIN(salary) AS minimum_salary
-- FROM employees 

-- in this way we can concatinate two strings from diffrent columns
-- SELECT 
--  CONCAT(first_name,' ',last_name) AS full_name
-- FROM customers



# if there is extra white space at starting and at the ending of the word 
-- we can trim 

-- SELECT 
	-- TRIM(last_name) AS trimmed_last_name,
    -- LENGTH(last_name) AS len_last_name
-- FROM customers



# when we have to make substring of any string

-- SELECT 
	-- SUBSTRING(last_name,2,5) AS substring_of_last_name   -- 1st indexing contains from where we have to trim and upto how many character will trim
-- FROM customers



#when we have to use two  columns simuntaneously for relation of any data 

-- this code is used to print the count of customers countrywise
-- SELECT
  -- COUNT(first_name) AS count_countrywise,
-- country
-- FROM customers
-- GROUP BY country
-- ORDER BY COUNT(first_name) ASC


-- SELECT 
	-- MAX(score) AS max_score,
	-- country
-- FROM customers
-- GROUP BY country
-- ORDER BY MAX(score) ASC

 
 #using having keyword 
 
-- SELECT COUNT(*) AS total_customers,
-- country
-- FROM customers
-- GROUP BY  country 
-- HAVING COUNT(*) > 1

-- id we have to filter it according to country
-- SELECT COUNT(*) AS total_customers,
-- country
-- FROM customers
-- WHERE country = 'Germany' 
-- GROUP BY country
-- HAVING COUNT(*) > 1

#merging two queries using IN function

-- SELECT *  		# main query
-- FROM orders
-- WHERE customer_id IN   
-- (SELECT 			#  query
	-- customer_id
-- FROM customers
-- WHERE score > 500)



# to get full info about the tables
-- DESCRIBE customers


 #to insert data into tables 
-- INSERT INTO customers
-- (customer_id,first_name,last_name,country,score)
-- VALUES(DEFAULT,'ANNA','LILY','India', NULL)
-- SELECT *
 --  FROM  customers




#to update the values inside the table

-- SELECT *
-- FROM customers

-- UPDATE customers
-- SET country= 'Germany',
-- 	score=100
-- WHERE customer_id=7


#to delete the row of data
-- DELETE FROM customers
-- WHERE customer_id= 6


-- SELECT *
-- FROM customers


# DELETING THE row of table is time taking so when 
-- we have simply delete the whole data of tabe in 1 line we use TRUNCATE function
-- TRUNCATE orders
-- SELECT *
-- FROM orders



-- # to create the new table 
-- CREATE TABLE db_sql_tutorial.persons(
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- full_name VARCHAR(50) NOT NULL,
-- age INT NOT NULL)


--# to add new columns inside the table 
-- ALTER TABLE persons
-- ADD email VARCHAR(50) PRIMARY KEY
-- SELECT *
-- FROM persons



--#TO DELETE THE WHOLE TABLE FROM THE DATA BASE WE USE DROP COMMAND
-- DROP TABLE persons









 










