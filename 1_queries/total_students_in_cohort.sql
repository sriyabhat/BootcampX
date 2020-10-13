SELECT count(1) AS nb_students 
FROM students 
WHERE cohort_id IN(1,2,3);