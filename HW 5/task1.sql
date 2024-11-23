SELECT Bill_Date, Bill_Total
FROM RestBills
WHERE Customer_name = 'Bob Crow';

SELECT DISTINCT Customer_name
FROM RestBills
WHERE Customer_name LIKE '% Smith'
ORDER BY Customer_name DESC;

SELECT DISTINCT Customer_name
FROM RestBills
WHERE Customer_name LIKE '% C%';

SELECT Employee_FirstName, Employee_LastName
FROM RestEmployees
WHERE headwaiter IS NULL;

SELECT *
FROM RestBills
WHERE Bill_Date BETWEEN 160201 AND 160229;

SELECT DISTINCT Bill_Date
FROM RestBills
WHERE Bill_Date BETWEEN 150101 AND 151231 
ORDER BY Bill_Date;