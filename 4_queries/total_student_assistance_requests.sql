SELECT count(A.id) AS total_assistances, S.name
FROM students S 
JOIN assistance_requests A 
ON S.id = A.student_id 
WHERE S.name = 'Elliot Dickinson'
GROUP BY S.name