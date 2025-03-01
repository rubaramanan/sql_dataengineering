create table employees(
    id integer PRIMARY KEY,
    first_name text not null,
    last_name text not null,
    age integer,
    salary decimal(10,2)
);

alter table employees
add email text;

alter table employees
drop email;

alter table employees
rename to employee;