SELECT sell_date,count(distinct(product)) AS num_sold, GROUP_CONCAT(DISTINCT product order by product) AS products
FROM Activities
GROUP BY sell_date
