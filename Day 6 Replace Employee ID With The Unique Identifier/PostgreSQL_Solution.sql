SELECT b.unique_id, a.name
FROM Employees a 
LEFT JOIN EmployeeUNI b USING(id);

-- you can also use on a.id = b.id instead of USING