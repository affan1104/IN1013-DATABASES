SELECT SUM(Bill_Total) AS Income
FROM RestBills;

SELECT SUM(Bill_Total) AS "Feb Income"
FROM RestBills
WHERE bill_date BETWEEN 160201 AND 160229;

SELECT AVG(Bill_Total)
FROM RestBills
WHERE table_no = 002;

SELECT MIN(no_of_seats) AS "Min", MAX(no_of_seats) AS "Max", AVG(no_of_seats) AS "Avg"
FROM restRest_table
WHERE room_name = "Blue";

SELECT COUNT(DISTINCT table_no)
FROM RestBills
WHERE waiter_no IN (004,002);