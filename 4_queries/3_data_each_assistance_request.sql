SELECT t.name as teacher, s.name as student, a.name as assignment, ar.completed_at - ar.started_at as duration
FROM assistance_requests ar
JOIN students s ON s.id = ar.student_id
JOIN teachers t ON t.id = ar.teacher_id
JOIN assignments a ON a.id = ar.assignment_id
ORDER BY duration
LIMIT 5

