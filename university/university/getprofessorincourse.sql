SELECT name, surname, professors.pid FROM professors JOIN courses ON professors.pid=courses.pid WHERE course_name=?;

-- Notes: GOOD.
-- Get professor owning a course
--
-- Write a query to retrieve the professor details that owns a given course. 
-- You must return the name, surname, ssn of the professor – the fields in this order.
-- The query has 1 parameter.
-- 1. query: course name
-- E.g. (in): (query, “Databases II”)
-- E.g. (out): name:“john” surname:“doe”, ssn:987654320
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called getprofessorincourse.sql .

/* Query took 0.0005 sec
SELECT name, surname, professors.pid FROM professors JOIN courses ON professors.pid=courses.pid WHERE course_name="Biology1";
*/