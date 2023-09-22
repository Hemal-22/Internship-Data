USERS ::

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


POSTS ::


create table posts (
	id INT,
	user_id INT,
	title VARCHAR(50),
	short_Description VARCHAR(50),
	description VARCHAR(50),
	views VARCHAR(50),
	create_at DATE,
	updated_at DATE,
	deleted_at DATE
);
insert into posts (id, user_id, title, short_Description, description, views, create_at, updated_at, deleted_at) values (2, 1, 'test','descripttion','flowers','10', '3/31/2021', '2/2/2022', '7/6/2021');
insert into posts (id, user_id, title, short_Description, description, views, create_at, updated_at, deleted_at) values (3, 3, 'test','test','hello','10', '3/31/2021', '2/2/2022', '7/6/2021');
insert into posts (id, user_id, title, short_Description, description, views, create_at, updated_at, deleted_at) values (4, 3, 'demo','testing','good morning',1.00', '5/6/2021', '5/20/2021', '6/9/2021');
insert into posts (id, user_id, title, short_Description, description, views, create_at, updated_at, deleted_at) values (5, 4, 'test demo','desc','fggh','20',1/7/2022', '10/25/2021', '12/29/2021');




COMMENTS ::


create table comments (
	id INT,
	post_id INT,
	user_id INT,
	content VARCHAR(50),
	created_at DATE,
	updated_at DATE,
	deleted_at DATE
);
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (2, 1, 1,'TABLE','1/14/2022', '2/19/2021', '12/24/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (3, 2, 2, 'DEMO', '7/31/2021', '5/4/2021', '3/11/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (4, 3, 3, 'TESTING', '10/23/2021', '7/14/2021', '12/26/2021');
insert into comments (id, post_id, user_id, content, created_at, updated_at, deleted_at) values (5, 4, 4, '​TEST DEMO','3/5/2021', '4/9/2021', '8/27/2021');
