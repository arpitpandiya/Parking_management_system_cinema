-- Manual insert data

-- insert data customer
insert into Customer(name, mobile, email) values
('Arpit pandiya','7899637412','a@gmail.com'),
('ravi kumar','4561232583','ravi@gmail.com'),
('naveen gupta','8527419632','nav@gmail.com');
select * from Customer

-- insert data vehicle
insert into Vehicle (vehicle_number, vehicle_type, customer_id) values
('RJ06CA1234', '4-wheeler', 1),
('RJ51BA4321', '2-wheeler', 2),
('RJ22MA7412', '4-wheeler', 3);

-- insert parking slot data
insert into ParkingSlot(slot_number,slot_type,is_available) values
('A1','4-wheeler',1),
('B1', '2-wheeler', 1),
('A2', '4-wheeler', 1),
('B2', '2-wheeler', 1);

--insert movie data
insert into Movie(title,genre,duration,show_time) values
('Houseful 5','comedy',148,'2025-06-20 19:30'),
('Siddhat','Drama',152,'2025-06-20 21:00'),
('Zindagi', 'Drama', 165, '2025-06-20 12:00');

-- insert data when customer arrives
insert into ParkingRecord(vehicle_id,slot_id,movie_id,entry_time,parking_fee) values
(1,1,2, GETDATE(), NULL)
