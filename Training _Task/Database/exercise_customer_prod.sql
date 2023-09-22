Database: practice

Table: customer & order_prod


CREATE TABLE `order` ( 
    `order_number` INT(10) NOT NULL , 
    `order_date` DATE NOT NULL , 
    `shipped_date` DATE NOT NULL , 
    `comments` VARCHAR(200) NOT NULL , 
    `customer_number` INT(10) NOT NULL ) 
    ENGINE = InnoDB;


INSERT INTO `order`(`order_number`, `order_date`, `shipped_date`, `comments`, `customer_number`) VALUES (1,9/25/2021, 6/17/2021,'good comment',1);

INSERT INTO `order`(`order_number`, `order_date`, `shipped_date`, `comments`, `customer_number`) VALUES (2, 1/12/2022,6/26/2021,'good',2);

INSERT INTO `order`(`order_number`, `order_date`, `shipped_date`, `comments`, `customer_number`) VALUES (3, 8/6/2021, 3/10/2021,'hello',3);


CREATE TABLE `order_prod` (
    `order_number` INT(10) NOT NULL , 
    `order_date` DATE NOT NULL ,
    `shipped_date` DATE NOT NULL , 
    `comments` VARCHAR(200) NOT NULL , 
    `customer_number` INT(30) NOT NULL ) 
    ENGINE = InnoDB;

INSERT INTO `order_prod`(`order_number`, `order_date`, `shipped_date`, `comments`, `customer_number`) VALUES (1,9/25/2021,6/17/2021,'good',1);

INSERT INTO `order_prod`(`order_number`, `order_date`, `shipped_date`, `comments`, `customer_number`) VALUES (2,1/12/2022, 6/26/2021,'hello',2);

INSERT INTO `order_prod`(`order_number`, `order_date`, `shipped_date`, `comments`, `customer_number`) VALUES (3,8/6/2021, 3/10/2021,'test',3);

-- joins ---

SELECT c.customer_number, c.customer_name FROM customer AS c LEFT JOIN order_prod AS o ON c.customer_number = o.customer_number;

-- ** outcome **--

customer_number	        customer_name
	
    1                        Gareth
    2                        Harmonie
    3                        Dag
    4                        Courtnay
    5                        Leopold
    6                        Anderea
    7                        Margaretha
    8                        Deanne
    9                        Thorin
    10                       Noak


SELECT c.customer_number, c.customer_name, c.country from customer AS c LEFT JOIN order_prod as o ON c.customer_number = o.comments;

-- ** outcome **--

customer_number	  customer_name	   country	
1                    Gareth         Canada
2                   Harmonie        China
3                   Dag             Sweden
4                   Courtnay        China
5                   Leopold        Philippines
6                   Anderea        Netherlands
7                  Margaretha        China
8                  Deanne            Indonesia
9                  Thorin          United States
10                 Noak             Philippines


SELECT c.customer_number, c.customer_name, c.country, order_number from customer AS c LEFT JOIN order_prod as o ON c.customer_number = o.comments;

-- ** outcome **--

customer_number	  customer_name	   country	  order_number	
   1                Gareth         Canada         NULL
   2               Harmonie         China          NULL
   3                Dag             Sweden         NULL
   4              Courtnay          China          NULL
   5              Leopold          Philippines      NULL
   6             Anderea         Netherlands        NULL
   7            Margaretha          China            NULL
   8            Deanne            Indonesia          NULL
   9            Thorin          United States         NULL
  10            Noak             Philippines          NULL


SELECT c.customer_number, c.customer_name, c.country from customer AS c LEFT JOIN order_prod as o ON c.customer_number = o.comments;

-- ** outcome **--

customer_number	 customer_name	 country	
1                  Gareth         Canada
2                 Harmonie        China
3                 Dag              Sweden
4                Courtnay           China
5                Leopold           Philippines
6               Anderea            Netherlands
7               Margaretha            China
8               Deanne              Indonesia
9               Thorin            United States
10              Noak                Philippines



DataBase: college

Table: University & college

CREATE TABLE `uni` ( 
    `id` INT(10) NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(20) NOT NULL , 
    `estd_year` INT(10) NOT NULL , 
    `city` VARCHAR(50) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO `uni`(`id`, `name`, `estd_year`, `city`) VALUES (101,'GLS',1947,'Ahmedabad');

INSERT INTO `uni`(`id`, `name`, `estd_year`, `city`) VALUES (102,'ATMIYA',2018,'Rajkot');

INSERT INTO `uni`(`id`, `name`, `estd_year`, `city`) VALUES (104,'GTU',2007,'Ahmedabad');

CREATE TABLE `clg` ( 
    `code` INT(10) NOT NULL , 
    `c_name` VARCHAR(50) NOT NULL , 
    `city` VARCHAR(30) NOT NULL , 
    `id` INT(10) NOT NULL ) ENGINE = InnoDB;

INSERT INTO `clg`(`code`, `c_name`, `city`, `id`) VALUES (1001,'SMPIC','Ahmedabad',101);

INSERT INTO `clg`(`code`, `c_name`, `city`, `id`) VALUES (1002,'FCT','Ahmedabad',102);

INSERT INTO `clg`(`code`, `c_name`, `city`, `id`) VALUES (1003,'MS','Baroda',103);

INSERT INTO `clg`(`code`, `c_name`, `city`, `id`) VALUES (1003,'MS','Baroda',103);





DataBase : pract 

table : customer_table & order_table 

-- order table --

create table order_table (
	order_id INT,
	order_date DATE,
	shipped_date DATE,
	product_name VARCHAR(50),
	quantity INT,
	price INT
);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (1, '12/5/2021', '1/13/2022', 'Nefen', 1, 1);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (2, '5/20/2021', '3/13/2021', 'Cissiee', 2, 2);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (3, '3/22/2021', '2/22/2022', 'Aile', 3, 3);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (4, '10/13/2021', '9/1/2021', 'Reinwald', 4, 4);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (5, '3/8/2021', '7/8/2021', 'Emelyne', 5, 5);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (6, '12/19/2021', '12/22/2021', 'Steffen', 6, 6);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (7, '6/10/2021', '4/28/2021', 'Kacey', 7, 7);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (8, '7/27/2021', '1/25/2022', 'Kyla', 8, 8);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (9, '2/14/2022', '2/22/2022', 'Sumner', 9, 9);
insert into order_table (order_id, order_date, shipped_date, product_name, quantity, price) values (10, '2/9/2022', '7/16/2021', 'Alverta', 10, 10);


-- customer table -- 

create table customer_table (
	order_id INT,
	customer_id INT,
	phone_number VARCHAR(50),
	customer_name VARCHAR(50),
	address VARCHAR(50)
);
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (1, 1, '269-499-7121', 'Janine', '882 Northport Street');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (2, 2, '470-710-4907', 'Jeremie', '54 Buell Terrace');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (3, 3, '351-103-0560', 'Cristin', '06 Waubesa Trail');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (4, 4, '784-410-4615', 'Gaylene', '0228 Bluestem Crossing');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (5, 5, '124-724-0313', 'Karlis', '77089 Bluejay Point');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (6, 6, '156-335-5893', 'Brenda', '187 Northfield Trail');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (7, 7, '689-346-4964', 'Nils', '984 Stone Corner Junction');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (8, 8, '621-541-9556', 'Adi', '1 Vidon Avenue');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (9, 9, '299-144-4158', 'Dorise', '146 Delaware Place');
insert into customer_table (order_id, customer_id, phone_number, customer_name, address) values (10, 10, '671-627-5297', 'Lonnie', '9034 New Castle Place');

-- query --
SELECT c.customer_name FROM customer_table AS c LEFT JOIN order_table AS o ON c.customer_name = o.order_date;





