create table ride(
    ride_id integer,
    driver_id integer,
    rider_id integer,
    pickup_location text,
    dropoff_location text,
    ride_date timestamp,
    fare decimal(10,2)
);

insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(1, 101, 201, 'point pedro', 'jaffna', '2024-12-29 00:00:00', 500.00),
(2, 102, 202, 'colombo', 'jaffna', '2024-12-29 10:00:00', 800.00),
(3, 103, 203, 'Chennai', 'Madurai', '2024-12-29 12:00:00', 400.00),
(4, 104, 204, 'Coimbatore', 'Chennai', '2024-12-29 14:00:00', 600.00),
(5, 101, 205, 'Bangalore', 'Coimbatore', '2024-12-29 16:00:00', 700.00);

select * from ride;

select *
from ride
where fare > 500
order by fare asc;

select *
from ride
where fare > 500 and dropoff_location = 'jaffna'
order by fare asc;