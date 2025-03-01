create table employees(
    id integer PRIMARY KEY,
    first_name text not null,
    last_name text not null,
    age integer,
    salary decimal(10,2)
);

-- ctas create table as
-- store result query output as table

create table high_paid_employee as
select 
    id,
    first_name,
    last_name,
    age,
    salary
from employees
where salary > 50000;

-- temporary table
-- session scoped temporary table
create temporary table temp_high_paid_employee(

    id integer,
    salary decimal(10,2)
);

insert into temp_high_paid_employee
select 
    id,
    salary
from employees
where salary > 60000;

-- cte
-- this is useful if we need the subqueries in multiple places.
create table hpe_cte as
with high_paid_employee_cte as(
    select
        id,
        first_name,
        last_name,
        salary
    from employees
    where salary >= 60000
)

select * from high_paid_employee_cte;