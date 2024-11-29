SELECT DISTINCT cl.full_name
FROM clients cl
WHERE cl.client_id IN (
    SELECT r.client_id
    FROM receipts r
    JOIN servers s ON r.team_leader_id = s.server_id
    WHERE s.first_name = 'Henry' AND r.total_amount > 450.00
);

SELECT s.first_name, s.last_name
FROM servers s
WHERE s.server_id = (
    SELECT r.team_leader_id
    FROM receipts r
    JOIN clients cl ON r.client_id = cl.client_id
    WHERE cl.full_name = 'Emma' AND r.receipt_date = '2016-01-11'
);

SELECT cl.full_name
FROM clients cl
WHERE cl.client_id IN (
    SELECT r.client_id
    FROM receipts r
    WHERE r.total_amount = (
        SELECT MIN(total_amount) FROM receipts
    )
);

SELECT s.first_name
FROM servers s
WHERE s.server_id NOT IN (
    SELECT DISTINCT r.server_id
    FROM receipts r
);

SELECT cl.full_name AS client_name, s.first_name AS team_leader_first_name, s.last_name AS team_leader_last_name, h.hall_name
FROM receipts r
JOIN clients cl ON r.client_id = cl.client_id
JOIN servers s ON r.team_leader_id = s.server_id
JOIN halls h ON r.hall_id = h.hall_id
WHERE r.total_amount = (
    SELECT MAX(total_amount) FROM receipts
);