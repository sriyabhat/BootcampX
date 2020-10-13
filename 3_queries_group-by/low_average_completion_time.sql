SELECT S.name AS student, AVG(ASub.duration) as average_assignment_duration, AVG(A.duration) AS average_estimated_duration
FROM assignments A
JOIN assignment_submissions ASub
ON ASub.assignment_id = A.id 
JOIN students S 
ON ASub.student_id = S.id
WHERE S.end_date IS NULL
GROUP BY S.id
HAvING AVG(ASub.duration) < AVG(A.duration)
ORDER BY average_assignment_duration