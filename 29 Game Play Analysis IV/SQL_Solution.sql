SELECT ROUND(COUNT(a1.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity a1
JOIN Activity a2
WHERE a1.player_id = a2.player_id
    AND 
    (a1.player_id, a1.event_date) IN (
    SELECT player_id, MIN(event_date) 
    FROM Activity
    GROUP BY player_id) 
    AND DATEDIFF(a2.event_date, a1.event_date) = 1
