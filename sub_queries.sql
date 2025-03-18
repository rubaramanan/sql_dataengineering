select first_name,
(select max(price) from sales) as max_sale
from employee;

select *
from ride
where driver_id in (
    select driver_id 
    from driver 
    where name not like 'R%');

select *
from ride
where exists (
    select driver_id 
    from driver 
    where name not like 'R%');

select *
from ride
where not exists (
    select driver_id 
    from driver 
    where name not like 'R%');

select 
    name,
    (select sum(fare)
    from ride as r
    where r.driver_id = d.driver_id
    ) as total_fare
from driver as d;

select rider_id, pickup_location, dropoff_location
from (select *
        from ride
        where fare > 100) as max_fare;

select
    name,
    (case when (select sum(fare) from ride as r where r.driver_id=d.driver_id) > 
                (select avg(fare) from ride) then 'Above avrage'
          else 'Below Average'
     end) as fare_category
from driver as d;