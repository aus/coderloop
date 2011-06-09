Update courses Set pid = Case When course_name = ? Then ? Else pid End;
/* Notes: GOOD.
  Add an existing professor to an existing course
--
-- Write a query to add an existing professor to an existing course into the database. The query has 2 parameters.
-- 1. query: course name, ssn
-- E.g.: (query, “Databases II”, 987654320)
-- Use question marks – ? – to reference each parameter positionally in your query. Write your SQL query in a file called professorincourse.sql .

/*
Update courses Set pid =   Case When course_name = "Biology1" Then 91 Else pid End;
Update courses Set pid =   Case When course_name = "Biology2" Then 92 Else pid End;
Update courses Set pid =   Case When course_name = "Biology3" Then 93 Else pid End;
Update courses Set pid =   Case When course_name = "Biology4" Then 94 Else pid End;
Update courses Set pid =   Case When course_name = "Biology5" Then 95 Else pid End;
*/