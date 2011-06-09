SELECT subject, credits FROM courses WHERE course_name=?;

-- Notes: GOOD.
-- Get Course details
--
--Write a query to retrieve the course details a given course name. 
-- You must return the subject and credits of the course – the fields in this order.
-- The query has 1 parameter.
-- 1. query: course name
-- E.g. (in): (query, “Databases II”)
-- E.g. (out): subject:“databases” credits:5
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called getcourse.sql .

/* (1 total, Query took 0.0005 sec)
SELECT subject, credits FROM courses WHERE course_name="Biology1";
*/