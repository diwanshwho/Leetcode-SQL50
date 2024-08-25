DELETE FROM Person WHERE id NOT IN (
    SELECT min_id
    FROM  (
        SELECT email, MIN(id) as min_id
        FROM Person
        GROUP BY email) AS test
    )
