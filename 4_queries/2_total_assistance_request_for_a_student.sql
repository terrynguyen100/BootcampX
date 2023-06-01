SELECT COUNT(ar.*) as total_assistance, s.name
FROM students s
JOIN assistance_requests ar ON s.id = ar.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;