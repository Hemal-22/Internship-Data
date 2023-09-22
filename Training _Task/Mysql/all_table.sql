*****  USER TABLE *****

create table users (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INT,
	gender VARCHAR(50),
	created_at DATE,
	updated_at DATE,
	deleted_at DATE
);
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (2, 'Debera', 'Wolfendell', true, 'Female', '9/27/2021', '2/28/2021', '1/18/2022');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (3, 'Candice', 'Djokovic', true, 'Male', '7/13/2021', '9/3/2021', '8/25/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (4, 'Tobye', 'Kluge', true, 'Female', '3/11/2021', '10/3/2021', '3/27/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (5, 'Merv', 'Thomerson', true, 'Male', '10/2/2021', '12/4/2021', '6/5/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (6, 'Con', 'Hailwood', true, 'Female', '2/22/2021', '3/10/2021', '5/24/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (7, 'Bobby', 'Bruckman', true, 'Female', '12/31/2021', '11/29/2021', '2/5/2022');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (8, 'Brig', 'Fewell', true, 'Male', '5/4/2021', '10/16/2021', '4/2/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (9, 'Gian', 'Fullilove', true, 'Male', '5/2/2021', '2/20/2021', '2/13/2022');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (10, 'Ruperto', 'Colter', true, 'Female', '12/9/2021', '2/6/2022', '12/13/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (11, 'Shari', 'Duffil', true, 'Male', '1/7/2022', '4/1/2021', '1/4/2022');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (12, 'Orin', 'Mouatt', true, 'Male', '8/4/2021', '11/22/2021', '5/6/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (13, 'Charyl', 'Ollett', true, 'Female', '12/29/2021', '1/27/2022', '11/28/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (14, 'Joyan', 'Cordall', true, 'Male', '11/29/2021', '7/7/2021', '10/17/2021');
insert into users (id, first_name, last_name, age, gender, created_at, updated_at, deleted_at) values (15, 'Eddy', 'Lindeboom', true, 'Female', '9/30/2021', '10/15/2021', '3/27/2021');





***** POST TABLE *****

create table posts (
	id INT,
	user_id INT,
	title VARCHAR(50),
	short_desc VARCHAR(50),
	desc VARCHAR(50),
	view INT,
	created_at DATE,
	updated_at DATE,
	deleted_at DATE
);
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (2, 1, 'Executive Secretary', 'Senior Editor', 'Business Systems Development Analyst', 2, '11/23/2021', '3/9/2021', '1/6/2022');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (3, 2, 'Director of Sales', 'VP Accounting', 'Payment Adjustment Coordinator', 3, '8/3/2021', '8/22/2021', '9/24/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (4, 3, 'Senior Cost Accountant', 'General Manager', 'Geologist I', 4, '7/10/2021', '11/23/2021', '9/22/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (5, 4, 'Electrical Engineer', 'Project Manager', 'Assistant Media Planner', 5, '5/12/2021', '6/19/2021', '12/15/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (6, 5, 'Media Manager IV', 'Chemical Engineer', 'Chemical Engineer', 6, '7/14/2021', '10/22/2021', '1/19/2022');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (7, 6, 'Accounting Assistant III', 'Chief Design Engineer', 'Analyst Programmer', 7, '8/21/2021', '9/21/2021', '7/31/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (8, 7, 'Internal Auditor', 'Cost Accountant', 'Nurse Practicioner', 8, '5/5/2021', '11/16/2021', '9/25/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (9, 8, 'Health Coach IV', 'Teacher', 'Paralegal', 9, '8/27/2021', '2/2/2022', '10/3/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (10, 9, 'Staff Scientist', 'Financial Advisor', 'Dental Hygienist', 10, '4/13/2021', '9/13/2021', '12/29/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (11, 10, 'Research Associate', 'Sales Associate', 'Research Nurse', 11, '6/24/2021', '8/25/2021', '9/4/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (12, 11, 'Staff Accountant IV', 'Community Outreach Specialist', 'Librarian', 12, '9/19/2021', '5/4/2021', '3/10/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (13, 12, 'VP Quality Control', 'Computer Systems Analyst IV', 'Actuary', 13, '5/30/2021', '7/26/2021', '1/16/2022');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (14, 13, 'Senior Developer', 'Junior Executive', 'Financial Advisor', 14, '10/29/2021', '2/5/2022', '6/8/2021');
insert into posts (id, user_id, title, short_desc, desc, view, created_at, updated_at, deleted_at) values (15, 14, 'Desktop Support Technician', 'Chief Design Engineer', 'Web Developer I', 15, '10/1/2021', '5/31/2021', '12/22/2021');



***** COMMENTS TABLE *****

create table comments (
	id INT,
	post_id INT,
	user_id VARCHAR(50),
	content VARCHAR(50),
	created_at DATE,
	updated_at DATE,
	deleted_at DATE
);
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (2, 2, 'error: no implicit conversion of Fixnum into String', 'Design Engineer', '7/5/2021', '3/2/2021', '3/24/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (3, 3, 'error: no implicit conversion of Fixnum into String', 'Community Outreach Specialist', '4/19/2021', '7/9/2021', '5/20/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (4, 4, 'error: no implicit conversion of Fixnum into String', 'Senior Cost Accountant', '9/24/2021', '12/10/2021', '12/13/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (5, 5, 'error: no implicit conversion of Fixnum into String', 'Web Designer I', '6/17/2021', '4/7/2021', '1/29/2022');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (6, 6, 'error: no implicit conversion of Fixnum into String', 'Data Coordiator', '4/25/2021', '3/26/2021', '1/20/2022');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (7, 7, 'error: no implicit conversion of Fixnum into String', 'Community Outreach Specialist', '11/26/2021', '8/31/2021', '1/20/2022');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (8, 8, 'error: no implicit conversion of Fixnum into String', 'Engineer III', '7/29/2021', '11/26/2021', '8/1/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (9, 9, 'error: no implicit conversion of Fixnum into String', 'Teacher', '2/13/2022', '1/1/2022', '6/7/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (10, 10, 'error: no implicit conversion of Fixnum into String', 'Product Engineer', '12/30/2021', '6/3/2021', '12/17/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (11, 11, 'error: no implicit conversion of Fixnum into String', 'Nuclear Power Engineer', '10/14/2021', '8/8/2021', '1/22/2022');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (12, 12, 'error: no implicit conversion of Fixnum into String', 'Business Systems Development Analyst', '10/23/2021', '12/26/2021', '4/4/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (13, 13, 'error: no implicit conversion of Fixnum into String', 'Librarian', '7/9/2021', '11/16/2021', '2/15/2022');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (14, 14, 'error: no implicit conversion of Fixnum into String', 'Senior Sales Associate', '10/14/2021', '5/5/2021', '1/15/2022');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (15, 15, 'error: no implicit conversion of Fixnum into String', 'Occupational Therapist', '6/22/2021', '8/27/2021', '2/25/2021');
