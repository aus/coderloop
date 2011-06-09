DELETE FROM enrollment WHERE sid=? AND course_name=?;

-- Notes: GOOD. 
-- Remove a student from a course
--
-- Write a query to remove a student from a course. The student should not be in the list of students attending the course after this call.
-- The query has 2 parameters.
-- 1. query: student id, course name
-- E.g. (in): (query, 984123, “Database II”)
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called delstudent.sql .

/* Query took 0.0025 sec
DELETE FROM enrollment WHERE sid=95 AND course_name="Biology5";
*/
