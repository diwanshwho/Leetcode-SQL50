SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b USING(empId)
WHERE COALESCE(b.bonus,0) < 1000;