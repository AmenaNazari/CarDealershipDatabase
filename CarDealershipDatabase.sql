Drop Database If Exists Cardealership;

Create Database Cardealership;

Use Cardealership;

Drop Table If Exists Lease_Contracts;
Drop Table If Exists Sales_Contracts;
Drop Table If Exists Inventory;
Drop Table If Exists Vehicles;
Drop Table If Exists Dealerships;

Create Table Dealerships (
    Dealership_Id Int Auto_Increment Primary Key,
    Name Varchar(50) Not Null,
    Adress Varchar(50),
    Phone Varchar(12) Not Null
);

Create Table Vehicles (
    Vin Varchar(17) Primary Key,
    Make Varchar(50) Not Null,
    Model Varchar(50) Not Null,
    Year Int Not Null,
    Sold Boolean Not Null,
    Color Varchar(50) Not Null,
    Vehicletype Varchar(50) Not Null,
    Odometer Int Not Null,
    Price Double Not Null
);

Create Table Inventory (
    Dealership_Id Int Not Null,
    Vin Varchar(17) Not Null,
    Foreign Key (Dealership_Id) References Dealerships(Dealership_Id),
    Foreign Key (Vin) References Vehicles(Vin)
);

Create Table Sales_Contracts (
    Contract_Id Int Auto_Increment Primary Key,
    Vin Varchar(17) Not Null,
    Sale_Date Date Not Null,
    Price Decimal(10,2) Not Null,
    Foreign Key (Vin) References Vehicles(Vin)
);

Create Table Lease_Contracts (
    Contract_Id Int Auto_Increment Primary Key,
    Vin Varchar(17) Not Null,
    Lease_Start Date Not Null,
    Lease_End Date Not Null,
    Monthly_Payment Decimal(10,2),
    Foreign Key (Vin) References Vehicles(Vin)
);

Insert Into Dealerships (Name, Adress, Phone) Values
    ('Helena Auto', '12th St', '2156784222'),
    ('Speed Auto', '123 Main St', '5551234567'),
    ('City Motors', '456 Oak Ave', '5559876543');

Insert Into Vehicles (Vin, Make, Model, Year, Sold, Color, Vehicletype, Odometer, Price) Values
    ('1hgcm82633a004352', 'Honda', 'Accord', 2020, False, 'Black', 'Sedan', 35000, 22000.00),
    ('2fagp9cw6jh100001', 'Ford', 'Escape', 2018, True, 'White', 'Suv', 52000, 18500.00),
    ('jh4ka4650mc000003', 'Acura', 'Legend', 1991, True, 'Red', 'Coupe', 125000, 7000.00);

Insert Into Inventory (Dealership_Id, Vin) Values
    (1, '1hgcm82633a004352'),
    (2, '2fagp9cw6jh100001'),
    (1, 'jh4ka4650mc000003');

Insert Into Sales_Contracts (Vin, Sale_Date, Price) Values
    ('2fagp9cw6jh100001', '2024-12-15', 18000.00),
    ('jh4ka4650mc000003', '2023-06-01', 6500.00);

Insert Into Lease_Contracts (Vin, Lease_Start, Lease_End, Monthly_Payment) Values
    ('1hgcm82633a004352', '2025-01-01', '2027-01-01', 350.00);




 
 