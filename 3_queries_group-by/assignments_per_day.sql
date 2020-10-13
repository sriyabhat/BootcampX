SELECT day, COUNT(1) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day