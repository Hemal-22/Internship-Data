<------------------------------------------------------Users------------------------------------------------------------>

CREATE TABLE users (
    id int AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar(255),
    age int(20),
    gender boolean,
    created_at datetime,
    updated_at datetime,
    deleted_at datetime,
    PRIMARY KEY (id)

);

// alter users

ALTER TABLE users
MODIFY COLUMN  created_at date DEFAULT NULL,
MODIFY COLUMN updated_at timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
MODIFY COLUMN deleted_at date DEFAULT NULL ;

ALTER TABLE users
MODIFY COLUMN gender ENUM('Female','Male');



//update 

UPDATE users
SET created_at = CURRENT_DATE(), updated_at = current_timestamp(), deleted_at = "";

// changing datatype of inserted column

ALTER TABLE users MODIFY COLUMN gender ENUM('Female','Male')NOT NULL;


-------------------------------------- insert data into users---------------------------------------------


into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (1, 'Lilly', 'Rowena', 50, 'Male', '2022-07-16', '2021-08-12');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (2, 'Doy', 'Harlick', 77, 'Male', '2022-06-06', '2021-03-02');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (3, 'Aguistin', 'Durnan', 95, 'Male', '2021-02-08', '2021-05-11');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (4, 'Kermie', 'Fouracres', 61, 'Male', '2022-08-17', '2022-01-02');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (5, 'Orrin', 'Buxey', 50, 'Male', '2021-01-14', '2021-03-24');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (6, 'Valdemar', 'Humblestone', 97, 'Female', '2022-04-29', '2022-02-10');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (7, 'Brooke', 'Vasilic', 39, 'Female', '2021-11-27', '2022-07-05');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (8, 'Pepillo', 'Mowle', 34, 'Female', '2022-08-09', '2022-06-29');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (9, 'Kerianne', 'Bantock', 58, 'Female', '2021-07-31', '2021-03-16');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (10, 'Rania', 'Moston', 59, 'Female', '2022-04-04', '2021-09-26');
insert into users (id, first_name, last_name, age, gender, created_at, deleted_at) values (11, 'Gerry', 'Lean', 70, 'Female', '2022-04-12', '2021-02-19');





<------------------------------------------------------Posts------------------------------------------------------------>

**********************************************
create posts table

CREATE TABLE posts (
    id int AUTO_INCREMENT,
    user_id int NOT NULL,
    short_description varchar(100),
    description varchar(200),
    views int(50),
    created_at datetime,
    updated_at datetime,
    deleted_at datetime,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)

);

// alter posts

ALTER TABLE posts
MODIFY COLUMN  created_at date DEFAULT NULL,
MODIFY COLUMN updated_at timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
MODIFY COLUMN deleted_at date DEFAULT NULL ;


-------------------------------------- insert data into posts---------------------------------------------

insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (1, 1, 'Infection following immunization, subsequent encounter', 'Drowning and submersion due to accident to watercraft', 1, '2021-08-25', '2022-07-14');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (2, 2, 'Hematospermia', 'Transverse fracture of shaft of radius', 2, '2022-03-21', '2021-02-28');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (3, 3, 'Other dislocation of right shoulder joint, sequela', 'Displ Maisonneuve''s fx unsp leg, 7thD', 3, '2021-01-09', '2021-08-03');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (4, 4, 'Underdosing of salicylates', 'Contact with other hot metals, subsequent encounter', 4, '2021-11-05', '2022-05-31');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (5, 5, 'Poisoning by penicillins, accidental (unintentional), init', 'Driver of 3-whl mv injured in clsn w hv veh nontraf, subs', 5, '2021-02-18', '2021-11-24');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (6, 6, 'Contus/lac/hem crblm w LOC of 1-5 hrs 59 min, subs', 'Child physical abuse, confirmed, sequela', 6, '2022-06-14', '2021-12-20');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (7, 7, 'Asphyx due to mech threat to breathing due to oth causes', 'Driver of 3-whl mv injured in collision w oth mv in traf', 7, '2021-09-06', '2021-12-29');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (8, 8, 'Vitamin A deficiency w Bitot''s spot and conjunctival xerosis', 'Car passenger injured in collision w SUV nontraf, sequela', 8, '2022-07-18', '2022-05-20');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (9, 9, 'Abrasion, unspecified lesser toe(s)', 'War operations involving unsp weapon of mass destruction', 9, '2021-07-30', '2022-02-19');
insert into posts (id, user_id, short_description, description, views, created_at, deleted_at) values (10, 10, 'Inj oth muscles and tendons at ank/ft level, r foot, subs', 'Driver of snowmobile injured in traffic accident, init', 10, '2022-04-20', '2021-05-05');



<------------------------------------------------------comments------------------------------------------------------------>

**********************************************
create comments table

CREATE TABLE comments (
    id int AUTO_INCREMENT,
    post_id int NOT NULL,
    user_id int NOT NULL,
    content varchar(100),
    created_at datetime,
    updated_at datetime,
    deleted_at datetime,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);



// alter comments

ALTER TABLE comments
MODIFY COLUMN  created_at date DEFAULT NULL,
MODIFY COLUMN updated_at timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
MODIFY COLUMN deleted_at date DEFAULT NULL ;

-------------------------------------- insert data into comments---------------------------------------------


insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (1, 1, 1, 'Person outside bus inj in clsn w rail trn/veh nontraf, init', '2021-03-19', '2022-02-25');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (2, 2, 2, 'Occup of bus injured in collision w 2/3-whl mv in traf, subs', '2021-10-06', '2021-12-29');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (3, 3, 3, 'Tributary (branch) retinal vein occlusion, left eye', '2022-05-21', '2022-06-22');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (4, 4, 4, 'Esophagostomy malfunction', '2021-02-13', '2021-06-22');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (5, 5, 5, 'Pasngr on bus injured pick-up truck, pk-up/van in traf, subs', '2022-06-09', '2022-01-09');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (6, 6, 6, 'Penetrating wound w foreign body of left eyeball, init', '2021-04-16', '2022-02-05');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (7, 7, 7, 'Person outside bus injured in collision w hv veh in traf', '2022-06-23', '2021-10-02');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (8, 8, 8, 'Prsn brd/alit from bus injured in collision w rail trn/veh', '2022-02-10', '2021-09-03');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (9, 9, 9, 'Toxic effect of unsp snake venom, accidental, init', '2021-06-02', '2022-05-23');
insert into comments (id, post_id, user_id, content, created_at, deleted_at) values (10, 10, 10, 'Struck by dog, subsequent encounter', '2021-11-17', '2022-01-06');




