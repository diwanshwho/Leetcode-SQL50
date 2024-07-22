SELECT b.unique_id, a.name
FROM Employees a 
LEFT JOIN EmployeeUNI b ON a.id = b.id;

-- you can also use USING(id) instead of ON a.id = b.id