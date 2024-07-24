SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b USING(empId)
WHERE bonus < 1000 or bonus is null;