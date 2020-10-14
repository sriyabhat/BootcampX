
SELECT DISTINCT T.name AS teacher,C.name AS cohort, COUNT(AR.id) AS total_assistances
FROM assistance_requests AR 
JOIN teachers T ON T.id = AR.teacher_id
JOIN students S ON S.id = AR.student_id
JOIN cohorts C ON C.id = S.cohort_id
WHERE C.name = 'JUL02'
GROUP BY T.name,C.name  
ORDER BY T.name