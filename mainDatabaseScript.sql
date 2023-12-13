DROP DATABASE IF EXISTS carDealership;

CREATE DATABASE IF NOT EXISTS carDealership;

USE carDealership;

CREATE TABLE dealerships (
 dealership_id int NOT NULL auto_increment primary key,
 name varchar(50) NOT NULL,
 address varchar(50),
 phone varchar(12)
);

CREATE TABLE vehicles (
 VIN varchar(17) NOT NULL primary key,
 sold boolean,
 year varchar(4),
 make varchar(20),
 model varchar(20),
 color varchar(20),
 price float
);

CREATE TABLE inventory (
 dealership_id INTEGER,
 VIN varchar(17),
 FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
 );
 
 CREATE TABLE sales_contracts (
 contract_ID INT NOT NULL auto_increment primary key,
 customer_name varchar(30),
 customer_phone varchar(12),
 sign_date date,
 VIN varchar(17),
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
 );
 
 CREATE TABLE lease_contracts (
 contract_ID INT NOT NULL auto_increment primary key,
 customer_name varchar(30),
 customer_phone varchar(12),
 sign_date varchar(10),
 end_date varchar(10),
 monthly_payment float,
 VIN varchar(17),
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
 );
 
 INSERT INTO dealerships (name, address, phone) VALUES
('The Buick Boys', '45 Encore Street', '123-456-7890'),
('The Bugatti Bros', '50 Veyron Road', '123-456-7891'),
('Your Porsche Pals', '992 Flat-Six Street', '123-456-7892'),
('The Dodge Dealer', '392 diablo Way', '123-456-7893'),
('Toyota Twins', '67 Century Lane', '123-456-7894');

INSERT INTO vehicles (VIN, sold, year, make, model, color, price) VALUES
('12345678912345670', TRUE, 2020, 'BUICK', 'encore', 'black', 10000.00),
('12345678912345671', TRUE, 2020, 'BUICK', 'enclave', 'green', 15000.00),
('12345678912345672', TRUE, 2020, 'BUGATTI', 'veyron', 'orange', 1000000.00),
('12345678912345673', TRUE, 2020, 'BUGATTI', 'divo', 'yellow', 10000000.00),
('12345678912345674', FALSE, 2020, 'PORSCHE', '911', 'red', 300000.00),
('12345678912345675', FALSE, 2020, 'PORSCHE', 'macan', 'black', 150000.00),
('12345678912345676', FALSE, 2020, 'DODGE', 'challenger', 'yellow', 90000.00),
('12345678912345677', FALSE, 2020, 'DODGE', 'charger', 'black', 80000.00),
('12345678912345678', FALSE, 2020, 'TOYOTA', 'Century', 'black', 50000.00),
('12345678912345679', FALSE, 2020, 'TOYOTA', 'Supra', 'white', 80000.00);
    
INSERT INTO inventory (dealership_id, VIN) VALUES
(1, '12345678912345670'),
(1, '12345678912345671'),
(2, '12345678912345672'),
(2, '12345678912345673'),
(3, '12345678912345674'),
(3, '12345678912345675'),
(4, '12345678912345676'),
(4, '12345678912345677'),
(5, '12345678912345678'),
(5, '12345678912345679');

INSERT INTO sales_contracts (customer_name, customer_phone, sign_date, VIN) VALUES
('Dim Wittington', '123-456-1234', '2023-12-01', '12345678912345670'),
('Jit Fitmoore', '123-456-1235', '2023-07-11', '12345678912345671');

INSERT INTO lease_contracts (customer_name, customer_phone, sign_date, end_date, monthly_payment, VIN) VALUES
('Mary Myatt', '123-456-1231', '2023-12-01', '12/01/2028', 800.00, '12345678912345672'),
('Jack Ross', '123-456-1232', '2023-07-11', '07/11/2033', 950.00, '12345678912345674');