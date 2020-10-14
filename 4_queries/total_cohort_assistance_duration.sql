SELECT C.name AS cohort, SUM(completed_at - started_at) AS total_duration
FROM cohorts C 
JOIN students S ON C.id = S.cohort_id
JOIN assistance_requests A on S.id = A.student_id
GROUP BY C.name
ORDER BY total_duration

