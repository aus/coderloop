SELECT name, surname, email, faculty FROM professors WHERE pid=?;

-- Notes: GOOD.
-- Get professor details
--
-- Write a query to retrieve a professor details given the social security number. 
-- You must return the name, surname, email and faculty of the professor – the fields in this order.
-- The query has 1 parameter.
-- 1. query: ssn
-- E.g. (in): (query, 987654320)
-- E.g. (out): name:“john” surname:“doe” email:“john.doe@coderloop-university.com” faculty:“computer science engineering”
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called getprofessor.sql .

/* (1 total, Query took 0.0004 sec)
SELECT name, surname, email, faculty FROM professors WHERE pid=91;
*/