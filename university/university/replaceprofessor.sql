UPDATE courses SET pid=? WHERE course_name=?;


-- Notes: GOOD.
-- Replace a professor in a course
--
-- Write a query to replace the professor owning a course. After this call the new professor should be listed as owner of the course.
-- The new ssn of the professor owning the course is passed to the query. together with the course name.
-- The query has 2 parameters.
-- 1. query: newssn, course name
-- E.g. (in): (query, 987654322, “Database II”)
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called replaceprofessor.sql .

/*
UPDATE courses SET pid=99 WHERE course_name="Biology1";
*/