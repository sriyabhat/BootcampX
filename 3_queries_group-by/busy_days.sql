SELECT day, COUNT(1) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(1) >= 10
ORDER BY day