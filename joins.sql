select r.fare, d.name
from driver as d
join ride as r
on r.driver_id = d.driver_id;

select d.name, r.fare
from driver d
left join ride as r
on r.driver_id = d.driver_id;

select d.name, r.fare
from driver d
right join ride as r
on r.driver_id = d.driver_id;

select d.name, r.fare
from driver d
full join ride as r
on r.driver_id = d.driver_id;


-- self join
select e.first_name as employee_name,
m.first_name as manager_name
from employee as e
join employee as m
on e.manager_id = m.id;