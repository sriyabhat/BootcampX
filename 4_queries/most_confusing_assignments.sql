SELECT A.id, A.day, A.chapter, A.name, COUNT(AR.id) as total_requests
FROM assignments A 
JOIN assistance_requests AR ON A.id = AR.assignment_id
GROUP BY A.id
ORDER BY total_requests DESC
