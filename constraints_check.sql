create table ride(
    ride_id integer primary key,
    driver_id integer not null,
    rider_id integer not null,
    pickup_location text not Null,
    dropoff_location text not null,
    ride_date timestamp,
    fare decimal(10,2) check (fare>0)
);

insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(1, 101, 201, 'point pedro', 'jaffna', '2024-12-29 00:00:00', 500.00);

insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(1, 101, 201, 'point pedro', 'Jaffna', '2024-12-29 00:00:00', -10); --error
