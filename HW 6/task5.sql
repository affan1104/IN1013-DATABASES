SELECT a.first_name, a.last_name, t.transaction_date, COUNT(*) AS num_transactions
FROM transactions t
JOIN attendants a ON t.attendant_id = a.attendant_id
GROUP BY a.attendant_id, a.first_name, a.last_name, t.transaction_date
HAVING COUNT(*) >= 2;

SELECT s.section_name, COUNT(*) AS num_large_tables
FROM seating_arrangements sa
JOIN sections s ON sa.section_id = s.section_id
WHERE sa.capacity > 6
GROUP BY s.section_name;

SELECT s.section_name, SUM(t.total_amount) AS total_transaction_amount
FROM transactions t
JOIN sections s ON t.section_id = s.section_id
GROUP BY s.section_name;

SELECT a.first_name AS lead_first_name, a.last_name AS lead_last_name, SUM(t.total_amount) AS total_transaction_amount
FROM attendants a
JOIN transactions t ON a.attendant_id = t.team_lead_id
GROUP BY a.attendant_id, a.first_name, a.last_name
ORDER BY total_transaction_amount DESC;

SELECT c.full_name, AVG(t.total_amount) AS avg_spent
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.full_name
HAVING AVG(t.total_amount) > 400;

SELECT a.first_name, a.last_name, t.transaction_date, COUNT(*) AS num_transactions
FROM transactions t
JOIN attendants a ON t.attendant_id = a.attendant_id
GROUP BY a.attendant_id, a.first_name, a.last_name, t.transaction_date
HAVING COUNT(*) >= 3;