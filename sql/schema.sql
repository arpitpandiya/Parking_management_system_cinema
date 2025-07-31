create database Parking_management_system
use Parking_management_system

-- Create Customers table
create table Customer(
customer_id int primary key identity(1,1),
name varchar(200),
mobile varchar(30),
email varchar(100)
);

-- Create Vehicles table
create table Vehicle(
vehicle_id int primary key identity(1,1),
vehicle_number varchar(20) unique,
vehicle_type varchar(20),
customer_id int,
Foreign key (customer_id) references Customer(customer_id)
);

-- create table ParkingSolt
create table ParkingSlot (
slot_id int primary key identity(1,1),
slot_number varchar(10) unique,
slot_type varchar(20), 
is_available BIT default 1
);

-- Create table movie
create table Movie (
movie_id int primary key identity(1,1),
title varchar(100),
genre varchar(50),
duration int,		-- minute
show_time datetime
);

-- Create table parkingrecord 
create table ParkingRecord(
record_id int primary key identity(1,1),
vehicle_id int,
slot_id int,
movie_id int,
entry_time datetime,
exit_time datetime,
parking_fee decimal(10,2), 
Foreign key (vehicle_id) references Vehicle(vehicle_id),
Foreign key (slot_id) references ParkingSlot(slot_id),
Foreign key (movie_id) references Movie(movie_id)
);

-- update the slot availability (not available)
update ParkingSlot set is_available = 0 where slot_id =1;

-- when customer exit , update parking record
update ParkingRecord set exit_time = GETDATE(),
	   parking_fee = DATEDIFF(Hour, entry_time, GETDATE())*20
	   where record_id = 1;

-- when customer is leaving to update slot is available
update ParkingSlot set is_available = 1 where slot_id = 1;

select * from Customer
select * from Vehicle
select * from ParkingSlot
select * from Movie
select * from ParkingRecord

-------------------------------------------------------------------------------------
