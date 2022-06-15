## RDBMS -
Relational Database Management Systems
program that allows you to create, manage, update and administer a relational database
e.g.:
SQLite
MYSQL
PostGreSQL
Oracle DB

## SQL Language: 
Creating a table and basic reading
Types of Data:
INTEGER - a positive or negative whole number
TEXT - a text string
DATE - the date YYYY-MM-DD
REAL - decimal value

## Basic Query Statements:
note: line breaks don't matter in SQL
columns are the "headers" e.g. id, name, email, birthday
rows are the cross comparisons, one per id
Creating a table:
CREATE TABLE table_name (
    column_1 data_type
    column_2 data_type,
    column_3 data_type
);
clause/ commands - written in capital letters, perform specific tasks in SQL 
table_name - refers to the name of the table that the command 
parameter - defines 

### Constraints: can be added to create table statement or other creation statements.
PRIMARY KEY - attempts to create a row with an identical value to another row within one column will result in a constraint violation and not be allowed. there can be only one primary key in a table.
UNIQUE - columns have a different value for every row. basically same thing as primary key except there can be many unique columns in a table.
NOT NULL - must have a value (value cannot be null. if it is, a new row will not be inserted)
DEFAULT - columns take an additional argument that specifies the value of any null 
Removing rows:
DELETE FROM table
WHERE id = n;
Adding rows:
INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 21);
Adding columns:
ALTER TABLE celebs
ADD COLUMN
twitter_handle TEXT;
Selecting colums to view:
SELECT * FROM celebs;

or SELECT column_1, column_2, column_3 FROM table;

you can also..
rename a column for your viewing using AS
e.g. SELECT name AS 'besties' FROM table;

remove duplicates from row entries
e.g SELECT DISTINCT column FROM table;

restrict the query to a specified parameter range
e.g. SELECT column FROM table WHERE x > 3;

search for similar terms according to a specified parameter
e.g. SELECT * FROM table WHERE column LIKE parameter
usually the parameter will contain a wildcard character (_) that stands in for any character or % that stands for 0 or more missing letters in the pattern e.g. %man% searches for entries containing the word man

search between specified values
SELECT * FROM table WHERE column BETWEEN 'A' and 'L';
search includes A and stops before L (A-K)

combine BETWEEN statements with AND or OR
e.g. SELECT * FROM table WHERE x AND y.

list results in order (descending or ascending)
e.g. SELECT * FROM table ORDER BY column ASC/DESC

place a limit to the number of rows output from the query. 
SELECT * FROM table LIMIT 3;

utilize if-then logic with cases:
SELECT column,
CASE
WHEN column > value THEN 'output'
etc.
ELSE 'final output'
END AS 'name you wish the last column to have'
FROM table;

used to fetch data from a database
SELECT- indicates the statement is a query
name / * / column name - specifies the column you wish to inquire about
FROM celebs - specifies the name of the table to query data from

Editing Data:
UPDATE celebs
SET age = 22
WHERE id = 1;

used to alter existing data in the database
UPDATE - indicates statement will edit existing data
SET - specifies the name of the column to be edited
WHERE - specifies the row that will be edited 


Aggregate Functions: 
using SQL to perform calculations
COUNT(column) - counts the number of rows
SUM(column) - adds up all contents of the column
MAX/MIN(column)
AVG()
ROUND(column, integer) - rounds to the number of integer
* you can nest these e.g.

ROUND(AVG(column), integer)

GROUP BY - allows to calculate dataset characteristics within a certain group e.g. 
SELECT year,
AVG(imbd_rating)
FROM movies
GROUP BY year
ORDER BY year;
-we can combine this function with other aggregate functions to separate the aggregates into groups
We can refer to columns selected in the SELECT statement using 1 and 2 in our GROUP BY clause
e.g. SELECT column 1, AVG( column 4) FROM table GROUP BY 1; (will group by column 1)
HAVING - filters based on group, not based on row


Working with multiple tables:
JOIN

SELECT orders.order_id, customers.customer_name FROM orders JOIN customers ON orders.customer;

SELECT * FROM orders JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id WHERE description = 'Fashion Magazine'
this will join the two tables, subscriptions and orders at the subscription_id column, including only orders with 'Fashion Magazine' as the description
the resulting table will only include rows that match at the SELECT statements ON condition. If the two tables do not match, that row will be omitted. 

LEFT JOIN - this will merge two tables and keep the rows at which the two tables do not match. In this kind of statement, the first column in the statement, directly following the JOIN clause will be kept in the table.

What's a primary key in one table becomes a foreign key in another

CROSS JOIN - when you want to compare every row in one table to every row in another. 
SELECT shirts.shirt_color, pants.pants_color FROM shirts CROSS JOIN pants;

UNION - combining two datasets with the same number of columns. 
SELECT * FROM table_1 UNION SELECT * FROM table_2;

WITH - embedding one query into another to use it as a temporary query e.g.
WITH previous_query AS (SELECT customer_id, COUNT(subscription_id) AS 'subscriptions' FROM orders GROUP BY customer_id) SELECT customers.customer_name, previous_query.subscriptions FROM previous_query JOIN customers ON customers.customer_id = previous_query.customer_id;
