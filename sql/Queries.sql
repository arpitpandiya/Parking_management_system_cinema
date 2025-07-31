
-- 1. show all the vechicles with owner details
select v.vehicle_number, v.vehicle_type, c.name,c.mobile
from Vehicle as v join Customer as c on v.customer_id = c.customer_id

--2. show all the available parking slot
select * from ParkingSlot where is_available = 1

--3. show only 4-wheeler parking slot is not fill
select * from ParkingSlot where slot_type = '4-wheeler'
and is_available = 1;

--4 find record with parking more than 3 hours
select *, DATEDIFF(hour, entry_time, exit_time) as hours_parked
from parkingRecord where DATEDIFF(hour, entry_time, exit_time)>3;

--5 count for unique customers
select count(distinct customer_id)as total_customer from Customer
