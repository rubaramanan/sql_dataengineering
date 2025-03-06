-- unique key

create table users(
    user_id integer primary key,
    email text unique
);

insert into users(user_id, email)
values(1, 'hello@gmail.com');

insert into users(user_id, email)
values(2, 'hello2@gmail.com');

insert into users(user_id, email)
values(3, NULL);

insert into users(user_id, email)
values(Null, 'hello4@gmail.com');

insert into users(user_id, email)
values(4, NULL);


-- unique key can allow null values
-- this is the difference between primary key and unique key
-- primarykey = unique + not null
-- unique key will allow more than one null
