SELECT P.product_id, COALESCE(ROUND(SUM(units*price)/SUM(units)::NUMERIC,2),0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U ON P.product_id = U.product_id 
AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY 1;
