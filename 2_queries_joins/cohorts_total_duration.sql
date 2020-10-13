SELECT SUM(assignment_submissions.duration) as total_cohort_duration
FROM 
(SELECT students.id
FROM students
JOIN cohorts 
ON students.cohort_id = cohorts.id
where cohorts.name = 'FEB12') AS A 
JOIN assignment_submissions
ON A.id = assignment_submissions.student_id