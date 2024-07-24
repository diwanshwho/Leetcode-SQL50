SELECT S.student_id, S.student_name, S2.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students S CROSS JOIN Subjects S2
LEFT JOIN Examinations E ON E.student_id = S.student_id AND E.subject_name = S2.subject_name
GROUP BY S.student_id, S.student_name, S2.subject_name
ORDER BY S.student_id, S2.subject_name;