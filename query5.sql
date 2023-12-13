use cardealership;

select d.dealership_id, d.address, d.name, d.phone
from dealerships d
join inventory i on d.dealership_id = i.dealership_id
inner join vehicles on i.VIN = vehicles.VIN
where vehicles.make LIKE "PORSCHE";