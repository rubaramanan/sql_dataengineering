select * 
from employee
where salary > 10000;

create view high_earner as (
    select * 
    from employee
    where salary > 10000
);

select * from high_earner;

insert into employee(id, first_name, last_name, age, salary)
values(5, 'xxx', 'yyy', 20, 25000),
(6, 'yy', 'xx', 21, 30000);

select * from high_earner;