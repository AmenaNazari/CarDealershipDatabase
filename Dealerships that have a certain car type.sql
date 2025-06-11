select  Name, Model, Year, vehicletype, Make
from vehicles v
join inventory i on v.vin = i.vin
join Dealerships d on d.dealership_Id = i.dealership_Id 
where v.make = "honda"




