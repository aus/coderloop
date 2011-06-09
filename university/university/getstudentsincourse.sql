SELECT name, surname FROM students JOIN enrollment ON students.sid=enrollment.sid WHERE course_name=?;

-- Notes: GOOD.
-- Get list of students attending a course
--
-- Write a query to retrieve all students attending a given course. 
-- You must return the name and the surname only – first the name, then surname – of each student.
-- Students should be sorted by surname, in ascendent order.
-- The query has 1 parameter.
-- 1. query: course name
-- E.g. (in): (query, “Databases II”)
-- E.g. (out): name:“mark” surname:“blue”, […]
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called getstudentsincourse.sql 

/* (1 total, Query took 0.0005 sec)
SELECT name, surname FROM students JOIN enrollment ON students.sid=enrollment.sid WHERE course_name="Biology1";
*/