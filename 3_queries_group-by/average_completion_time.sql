SELECT S.name as student, AVG(A.duration) as average_assignment_duration
FROM students S
JOIN assignment_submissions A 
on S.id = A.student_id
WHERE S.end_date IS NULL
GROUP BY S.id
ORDER BY average_assignment_duration desc
