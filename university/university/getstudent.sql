SELECT name, surname, email, faculty, matriculation FROM students WHERE sid=?;

-- Notes: GOOD.
-- Get student details
--
-- Write a query to retrieve a student details given the student identifier. 
-- You must return the name, surname, email (if any), faculty, matriculation year of the student – the fields in this order.
-- The query has 1 parameter.
-- 1. query: student id
-- E.g. (in): (query, 984123)
-- E.g. (out): name:“mark” surname:“blue” email:“mark.blue@coderloop-students.com” faculty:“computer science engineering” year:2007
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called getstudent.sql .

/* (1 total, Query took 0.0005 sec)
SELECT name, surname, email, faculty, matriculation FROM students WHERE sid=91;
*/