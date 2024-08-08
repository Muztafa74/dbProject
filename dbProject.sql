create table students(
	student_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	birth_data date
);

create table courses (
	course_id serial primary key,
	course_name varchar(50),
	course_code int
);

create table enrollments (
    enrollment_id serial primary key,
    student_id int references students(student_id),
    course_id int references courses(course_id),
    enrollment_date date
);

insert into students (student_id, first_name, last_name, birth_date) values
(1, 'John', 'Doe', '2000-01-15'),
(2, 'Jane', 'Smith', '1999-03-22'),
(3, 'Alice', 'Johnson', '2001-07-30'),
(4, 'Bob', 'Brown', '2000-12-05');

alter table students rename column birth_data to birth_date;

insert into courses (course_id, course_name, course_code) values
(1, 'Database Systems', 'CS101'),
(2, 'Algorithms', 'CS102'),
(3, 'Data Structures', 'CS103'),
(4, 'Operating Systems', 'CS104');

alter table courses
alter column course_code type varchar(10);

insert into enrollments (student_id, course_id, enrollment_date) values
(1, 1, '2024-08-01'),
(1, 2, '2024-08-01'),
(2, 1, '2024-08-01'),
(3, 3, '2024-08-01'),
(4, 4, '2024-08-01');


insert into enrollments (student_id, course_id, enrollment_date) values
(4, 1, '2024-08-01');

select * from students

select
    student_id as "ID",
    first_name as "First Name",
    last_name as "Last Name",
    birth_date as "Date of Birth"
from students;

select * from students order by last_name;

select distinct * from enrollments;


