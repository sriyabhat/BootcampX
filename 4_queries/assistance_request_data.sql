
SELECT T.name AS teacher,S.name AS student,A.name AS assignment,(completed_at - started_at) as duration
FROM assistance_requests AR
JOIN students S 
ON AR.student_id = S.id
JOIN teachers T 
ON AR.teacher_id = T.id
JOIN assignments A
ON A.id = AR.assignment_id
ORDER BY duration