SELECT day, count(1) AS number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day