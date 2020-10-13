SELECT students.name, COUNT(assignment_submissions.id) as total_submissions
FROM assignment_submissions
JOIN students
ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.id
HAVING COUNT(assignment_submissions.id) < 100