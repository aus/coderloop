INSERT INTO students (name, surname, email, faculty, matriculation, sid)  VALUES (?, ?, ?, ?, ?, ?);

-- Notes: GOOD.
-- Add a new student
--
-- Write a query to add a new student into the database. The query has 6 parameters.
-- 1. query: name, surname, email, faculty, year, student id
-- E.g.: (query, “mark”, “blue”, “mark.blue@coderloop-students.com”, “computer science engineering”, 2007, 984123)
-- If the email – that is optional – is missing, the string will be empty (e.g.: query, “mark”, “blue”, "", “computer science engineering”, 2007, 984123)
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called newstudent.sql .

/*
-- New Students
INSERT INTO students (name, surname, email, faculty, matriculation, sid)  VALUES ("Sua1", "Bor1", "stuemail1", "fac1", 1999, 91);
INSERT INTO students (name, surname, email, faculty, matriculation, sid)  VALUES ("Sua2", "Bor2", "stuemail2", "fac2", 2000, 92);
INSERT INTO students (name, surname, email, faculty, matriculation, sid)  VALUES ("Sua3", "Bor3", "stuemail3", "fac3", 2001, 93);
INSERT INTO students (name, surname, email, faculty, matriculation, sid)  VALUES ("Sua4", "Bor4", "stuemail4", "fac4", 2002, 94);
INSERT INTO students (name, surname, email, faculty, matriculation, sid)  VALUES ("Sua5", "Bor5", "stuemail5", "fac5", 2003, 95);
*/