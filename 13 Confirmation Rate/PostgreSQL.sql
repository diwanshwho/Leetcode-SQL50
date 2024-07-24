SELECT S.user_id, ROUND(
    COUNT(C.action) FILTER(WHERE C.action = 'confirmed')::numeric /
    COUNT(*)::numeric    
,2) AS confirmation_rate
FROM Signups S 
LEFT JOIN Confirmations C 
ON S.user_id = C.user_id
GROUP BY S.user_id;
