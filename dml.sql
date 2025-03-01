create database demo;

\c demo

create table users(
    name text,
    age integer,
    address text
);

select *
from users;

-- insert single value
insert into users(name, age, address)
values('Ruba', 56, 'Point Pedro');


-- insert multiple value
insert into users(name, age, address)
values
('Ramanan', 28, 'Point Pedro'),
('Thayalan', 57, 'Point Pedro'),
('Ruban', 27, 'Point Pedro');


select *
from users;

-- single column update
update users
set address = 'Vallipurapariyariyar lane, Point Pedro'
where name = 'Ruba';

-- multiple column update
update users
set address = 'Point Pedro', age=57
where name = 'Ruba';


-- delete specific condition rows
delete from users where age < 29;

-- delete all row
delete from users;

-- delete all row
truncate table users;

-- delete table
drop table users;