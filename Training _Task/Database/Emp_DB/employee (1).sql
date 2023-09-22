database : my_practice

table : employee

create table employee (
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INT,
	department VARCHAR(50),
	product VARCHAR(50),
	price INT
);
insert into employee (first_name, last_name, age, department, product, price) values ('Di', 'Padrick', 1, 'Sales', 'Jam - Marmalade, Orange', 1);
insert into employee (first_name, last_name, age, department, product, price) values ('Zaneta', 'Luscombe', 2, 'Legal', 'Ice Cream - Fudge Bars', 2);
insert into employee (first_name, last_name, age, department, product, price) values ('Ashely', 'Preshous', 3, 'Business Development', 'Mustard - Dijon', 3);
insert into employee (first_name, last_name, age, department, product, price) values ('Dorothea', 'Arsmith', 4, 'Services', 'Curry Paste - Madras', 4);
insert into employee (first_name, last_name, age, department, product, price) values ('Edvard', 'Cleugher', 5, 'Marketing', 'Appetizer - Smoked Salmon / Dill', 5);
insert into employee (first_name, last_name, age, department, product, price) values ('Oates', 'Gaukrodge', 6, 'Services', 'Salami - Genova', 6);
insert into employee (first_name, last_name, age, department, product, price) values ('Benn', 'McBrady', 7, 'Engineering', 'Wasabi Paste', 7);
insert into employee (first_name, last_name, age, department, product, price) values ('Nancee', 'Baniard', 8, 'Research and Development', 'Chevere Logs', 8);
insert into employee (first_name, last_name, age, department, product, price) values ('Chevy', 'Mayhow', 9, 'Engineering', 'Cheese - Mozzarella, Buffalo', 9);
insert into employee (first_name, last_name, age, department, product, price) values ('Emmott', 'Weakley', 10, 'Training', 'Yeast - Fresh, Fleischman', 10);




-- query -- 

-- 1. concate -- 

SELECT CONCAT(first_name, ' ', last_name) FROM employee WHERE age > 3;

CONCAT(first_name, ' ', last_name)	
Bryce Moryson
Maressa Gillani
Claresta Hutcheson
Lissi Walkingshaw
Scottie Haville
Lauri Burde
Nedda McCorrie


-- 2. Max value --

SELECT product, price FROM employee WHERE price=(SELECT MAX(price) FROM employee);


product                          price
Yeast - Fresh, Fleischman          10



-- 3. OR  --

SELECT first_name, department FROM employee WHERE department = 'Services' OR department = 'Engineering';

first_name	department	
Dorothea	Services
Oates		Services
Benn		Engineering
Chevy		Engineering


-- 4. AND  -- 

SELECT first_name, department FROM employee WHERE age IN(5,6,8) AND department = 'Services';

first_name  department
Oates        Services

-- 5. ORDER BY -- 

SELECT * FROM employee ORDER BY age DESC;

SELECT * FROM EMPLOYEE ORDER BY 'first_name', 'age';

-- 6. Retriving  --

SELECT * FROM employee WHERE last_name REGEXP '^m';

first_name	 last_name	 age	 department	    product	      price	
Benn           McBrady    7
Engineering
Wasabi Paste
7
Chevy
Mayhow
9
Engineering
Cheese - Mozzarella, Buffalo
9




