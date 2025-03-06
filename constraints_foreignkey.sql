create table driver(
 driver_id integer primary key,
 name text,
 license_number integer unique   
);


create table ride(
    ride_id integer primary key,
    driver_id integer,
    rider_id integer,
    pickup_location text,
    dropoff_location text,
    ride_date timestamp,
    fare decimal(10,2),
    foreign key (driver_id) references driver(driver_id)
);
insert into driver(driver_id, name, license_number)
values(101, 'Ruba', 1234),
(102, 'Ramanan', 1235);


insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(5, 101, 201, 'point pedro', 'jaffna', '2024-12-29 08:00:00', 500.00),
(6, 102, 203, 'Jaffna', 'Point Pedro', '2024-12-29 09:00:00', 500.00),
(2, 102, 202, 'point pedro', 'Colombo', '2024-12-29 00:00:00', 500.00); 

insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(4, 501, 201, 'point pedro', 'jaffna', '2024-12-29 08:00:00', 500.00); --error

delete from driver where driver_id=101; --error

delete from ride where driver_id=101;
delete from driver where driver_id=101;

create table ride(
    ride_id integer primary key,
    driver_id integer,
    rider_id integer,
    pickup_location text,
    dropoff_location text,
    ride_date timestamp,
    fare decimal(10,2),
    foreign key (driver_id) references driver(driver_id) on delete cascade
);

-- now this will delete the records in ride and driver tables automatically
delete from driver where driver_id=102;


insert into ride(ride_id, driver_id, rider_id, pickup_location, dropoff_location, ride_date, fare)
values
(5, 101, 201, 'point pedro', 'jaffna', '2024-12-29 08:00:00', 500.00),
(6, 102, 203, 'Jaffna', 'Point Pedro', '2024-12-29 09:00:00', 500.00),
(2, 102, 202, 'point pedro', 'Colombo', '2024-12-29 00:00:00', 500.00); 


-- do soft delete as best practice to mitigate data loss

alter table ride add column is_delete boolean default false;

update ride set is_delete=true where driver_id=102;