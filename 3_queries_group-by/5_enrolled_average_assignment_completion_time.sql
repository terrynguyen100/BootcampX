SELECT s.name as student, AVG(a.duration) as average_assignment_duration
FROM students s
JOIN assignment_submissions a ON s.id = a.student_id
WHERE end_date IS NULL
GROUP BY s.name
ORDER BY AVG(a.duration) DESC