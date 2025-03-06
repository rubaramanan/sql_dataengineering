-- primary key

create table ride(
    ride_id integer primary key,
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
(1, 101, 202, 'point pedro', 'jaffna', '2024-12-29 00:00:00', 500.00); -- this line has to error

-- composite primary ke
-- more than one primary key
create table ride(
    ride_id integer,
    driver_id integer,
    rider_id integer,
    pickup_location text,
    dropoff_location text,
    ride_date timestamp,
    fare decimal(10,2),
    primary key (ride_id, rider_id, driver_id)
);

insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(1, 101, 201, 'point pedro', 'jaffna', '2024-12-29 00:00:00', 500.00),
(1, 101, 201, 'point pedro', 'jaffna', '2024-12-29 00:00:00', 500.00); -- this line has to error

insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(1, 101, 202, 'point pedro', 'jaffna', '2024-12-29 00:00:00', 500.00);