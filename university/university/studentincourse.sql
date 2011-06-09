INSERT INTO enrollment (course_name, sid) VALUES (?, ?);

-- Notes: GOOD. But duplicate students could be added to course.
-- Add an existing student to an existing course
--
-- Write a query to add an existing student to an existing course into the database. The query has 2 parameters.
-- 1. query: course name, student id
-- E.g.: (query, “Databases II”, 984123)
-- Use question marks – ?) – to reference each parameter positionally in your query. Write your SQL query in a file called studentincourse.sql .

/*
INSERT INTO enrollment (course_name, sid) VALUES ("Biology1", 91);
INSERT INTO enrollment (course_name, sid) VALUES ("Biology2", 92);
INSERT INTO enrollment (course_name, sid) VALUES ("Biology3", 93);
INSERT INTO enrollment (course_name, sid) VALUES ("Biology4", 94);
INSERT INTO enrollment (course_name, sid) VALUES ("Biology5", 95);
*/