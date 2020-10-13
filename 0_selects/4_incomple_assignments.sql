SELECT (SELECT COUNT(1) FROM assignments) - COUNT(A.id) AS nb_incomplete_submissions
FROM students S 
JOIN assignment_submissions A 
ON S.id = A.student_id
WHERE S.name = 'Ibrahim Schimme'


SELECT AVG(total_students) as average_students
FROM (SELECT  count(students) AS total_students
FROM students
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts) as totals_table;


SELECT assignments.name
FROM assignments
WHERE id NOT IN(
  SELECT A.assignment_id
  FROM students S 
  JOIN assignment_submissions A 
  ON S.id = A.student_id
  WHERE S.name = 'Ibrahim Schimmel'
)


