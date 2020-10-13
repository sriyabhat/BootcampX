SELECT cohorts.name as cohort_name, count(assignment_submissions.id) as total_submissions
FROM students
JOIN cohorts 
ON cohort_id = cohorts.id
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY cohorts.id
ORDER BY total_submissions DESC