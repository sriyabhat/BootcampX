SELECT name, id, email, cohort_id
FROM students 
WHERE email NOT like '%gmail.com'
AND phone IS NULL

