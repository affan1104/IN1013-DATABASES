SELECT DISTINCT s.first_name
FROM servers s
JOIN receipts r ON s.server_id = r.server_id
JOIN clients c ON r.client_id = c.client_id
WHERE c.full_name = 'Tanya Kapoor';

SELECT r.transaction_date
FROM receipts r
JOIN halls h ON r.hall_id = h.hall_id
JOIN servers s ON r.team_leader_id = s.server_id
WHERE s.first_name = 'Henry'
  AND h.hall_name = 'Red'
  AND r.transaction_date BETWEEN '2016-02-01' AND '2016-02-29';

SELECT s.first_name, s.last_name
FROM servers s
WHERE s.team_leader_id = (
    SELECT team_leader_id
    FROM servers
    WHERE first_name = 'Emma' AND last_name = 'Stone'
);

SELECT c.full_name AS client_name, r.total_amount, s.first_name AS server_name
FROM receipts r
JOIN clients c ON r.client_id = c.client_id
JOIN servers s ON r.server_id = s.server_id
ORDER BY r.total_amount DESC;

SELECT DISTINCT s.first_name, s.last_name
FROM servers s
JOIN receipts r ON s.server_id = r.server_id
WHERE r.team_id IN (
    SELECT DISTINCT team_id
    FROM receipts
    WHERE receipt_id IN ('12345', '67890')
);

SELECT DISTINCT s.first_name, s.last_name
FROM servers s
JOIN receipts r ON s.server_id = r.server_id
JOIN halls h ON r.hall_id = h.hall_id
WHERE h.hall_name = 'Yellow'
  AND r.transaction_date = '2023-11-29';