use cardealership;

SELECT sales_contracts.contract_ID, sales_contracts.customer_name, sales_contracts.customer_phone, sales_contracts.sign_date, vehicles.VIN, vehicles.year, vehicles.make, vehicles.model, vehicles.color, vehicles.price
FROM
    dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles ON inventory.VIN = vehicles.VIN
JOIN sales_contracts ON vehicles.VIN = sales_contracts.VIN
WHERE
    dealerships.name = 'The Buick Boys'
    AND sales_contracts.sign_date BETWEEN '2023-01-01' AND '2023-08-01';
