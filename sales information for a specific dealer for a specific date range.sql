SELECT s.*
FROM sales_contracts s
JOIN inventory i ON s.VIN = i.VIN
WHERE i.dealership_id = 2
AND s.sale_date BETWEEN '2024-01-01' AND '2024-12-31';
