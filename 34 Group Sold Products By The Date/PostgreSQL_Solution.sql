SELECT sell_date,count(distinct(product)) AS num_sold, STRING_AGG(DISTINCT product , ',') AS products
FROM Activities
GROUP BY sell_date
