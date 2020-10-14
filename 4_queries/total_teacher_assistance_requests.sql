SELECT count(A.id) as total_assistances,T.name
FROM assistance_requests AS A
JOIN teachers AS T
ON A.teacher_id = T.id 
WHERE T.name ='Waylon Boehm'
GROUP BY T.name

