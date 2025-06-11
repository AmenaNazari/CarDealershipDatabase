SELECT name, vin
FROM dealerships d
join inventory i on d.dealership_Id = i.dealership_Id
where d.name = "Speed Auto"