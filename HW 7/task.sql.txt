-- 1
CREATE VIEW samsBills
AS (
    SELECT 
        first_name,
        surname,
        bill_date,
        cust_name,
        bill_total
    FROM 
        bills
    INNER JOIN 
        waiters ON waiter_id = waiter_id
    INNER JOIN 
        customers ON customer_id = customer_id
    WHERE 
        first_name = 'Sam' AND surname = 'Pitt'
);

-- 2

SELECT * 
FROM samsBills
WHERE bill_total > 400;

-- 3

CREATE VIEW roomTotals
AS (
    SELECT 
        room_name,
        SUM(bill_total) AS "total_sum"
    FROM 
        bills
    INNER JOIN 
        rooms ON room_id = room_id
    GROUP BY 
        room_name
);

-- 4

CREATE VIEW teamTotals
AS (
    SELECT 
        CONCAT(first_name, ' ', surname) AS headwaiter_name,
        SUM(bill_total) AS total_sum
    FROM 
        bills
    INNER JOIN 
        waiters ON waiter_id = waiter_id
    GROUP BY 
        CONCAT(first_name, ' ', surname)
);
