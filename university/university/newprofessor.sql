INSERT INTO professors (name, surname, email, faculty, telephone, pid)  VALUES (?, ?, ?, ?, ?, ?);

-- Notes: GOOD.
-- Add a new professor
--
-- Write a query to add a new professor into the database. The query has 6 parameters.
-- 1. query: name, surname, email, faculty, telephone, ssn
-- E.g.: (query, “john”, “doe”, “john.doe@coderloop-university.com”, “computer science engineering”, “+49-888-01923383”, 987654320)
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called newprofessor.sql.
/*
-- New Professors
INSERT INTO professors (name, surname, email, faculty, telephone, pid)  VALUES ("Aus1", "Rob1", "email1", "fac1", "11", 91);
INSERT INTO professors (name, surname, email, faculty, telephone, pid)  VALUES ("Aus2", "Rob2", "email2", "fac2", "12", 92);
INSERT INTO professors (name, surname, email, faculty, telephone, pid)  VALUES ("Aus3", "Rob3", "email3", "fac3", "13", 93);
INSERT INTO professors (name, surname, email, faculty, telephone, pid)  VALUES ("Aus4", "Rob4", "email4", "fac4", "14", 94);
INSERT INTO professors (name, surname, email, faculty, telephone, pid)  VALUES ("Aus5", "Rob5", "email5", "fac5", "15", 95);
*/