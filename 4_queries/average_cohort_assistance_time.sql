SELECT C.name, AVG(A.completed_at - A.started_at) AS average_assistance_time
FROM cohorts C
JOIN students S ON C.id = S.cohort_id
JOIN assistance_requests A ON A.student_id = S.id
GROUP BY C.name 
ORDER BY average_assistance_time

