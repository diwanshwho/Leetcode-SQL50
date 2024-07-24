SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans 
FROM Visits v
LEFT JOIN Transactions t USING(visit_id)
WHERE transaction_id is null
GROUP BY v.customer_id;