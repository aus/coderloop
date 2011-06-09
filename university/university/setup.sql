CREATE TABLE students (
	sid int NOT NULL,
	name varchar(255),
	surname varchar(255),
	email varchar(255),
	faculty varchar(255),
	matriculation int,
	PRIMARY KEY (sid)
	);

CREATE INDEX stu_index ON students (sid);	

CREATE TABLE professors (
	pid int NOT NULL,
	name varchar(255),
	surname varchar(255),
	email varchar(255),
	faculty varchar(255),
	telephone varchar(255),
	PRIMARY KEY (pid)
);

CREATE INDEX pro_index ON professors (pid);	


CREATE TABLE courses (
	course_name varchar(255) NOT NULL,
	pid int,
	credits int,
	subject varchar(255),
	PRIMARY KEY (course_name)
);

CREATE INDEX cou_index ON courses (course_name);	

CREATE TABLE enrollment (
	course_name varchar(255),
	sid int
);